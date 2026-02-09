#!/usr/bin/env bash
set -euo pipefail

docker compose -f scripts/dev/mq/docker-compose.yml up -d

mq_admin_user="${MQ_ADMIN_USER:-mqadmin}"
mq_admin_password="${MQ_ADMIN_PASSWORD:-mqadmin}"
wait_timeout_seconds=120
wait_interval_seconds=5

wait_for_qm() {
  local rest_base_url="$1"
  local qmgr_name="$2"
  local start_epoch
  start_epoch="$(date +%s)"

  while true; do
    if curl -sS -k -u "${mq_admin_user}:${mq_admin_password}" \
      -H "Content-Type: application/json" \
      -H "ibm-mq-rest-csrf-token: local" \
      -d '{"type": "runCommandJSON", "command": "DISPLAY", "qualifier": "QMGR"}' \
      -o /dev/null \
      --fail \
      --max-time 5 \
      "${rest_base_url}/admin/action/qmgr/${qmgr_name}/mqsc"; then
      echo "${qmgr_name} REST endpoint is ready."
      return 0
    fi

    now_epoch="$(date +%s)"
    elapsed_seconds="$((now_epoch - start_epoch))"
    if ((elapsed_seconds >= wait_timeout_seconds)); then
      echo "Timed out waiting for ${qmgr_name} REST endpoint after ${wait_timeout_seconds}s." >&2
      return 1
    fi

    echo "Waiting for ${qmgr_name} REST endpoint (${elapsed_seconds}s elapsed)..."
    sleep "${wait_interval_seconds}"
  done
}

wait_for_qm "${MQ_REST_BASE_URL:-https://localhost:9443/ibmmq/rest/v2}" "QM1"
wait_for_qm "${MQ_REST_BASE_URL_QM2:-https://localhost:9444/ibmmq/rest/v2}" "QM2"
