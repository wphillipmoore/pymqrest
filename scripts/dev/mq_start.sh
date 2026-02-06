#!/usr/bin/env bash
set -euo pipefail

docker compose -f scripts/dev/mq/docker-compose.yml up -d

mq_admin_user="${MQ_ADMIN_USER:-mqadmin}"
mq_admin_password="${MQ_ADMIN_PASSWORD:-mqadmin}"
rest_base_url="${MQ_REST_BASE_URL:-https://localhost:9443/ibmmq/rest/v2}"
mq_qmgr_name="QM1"
wait_timeout_seconds=120
wait_interval_seconds=5

start_epoch="$(date +%s)"

while true; do
  if curl -sS -k -u "${mq_admin_user}:${mq_admin_password}" \
    -H "Content-Type: application/json" \
    -H "ibm-mq-rest-csrf-token: local" \
    -d '{"type": "runCommandJSON", "command": "DISPLAY", "qualifier": "QMGR"}' \
    -o /dev/null \
    --fail \
    --max-time 5 \
    "${rest_base_url}/admin/action/qmgr/${mq_qmgr_name}/mqsc"; then
    echo "MQ REST endpoint is ready."
    break
  fi

  now_epoch="$(date +%s)"
  elapsed_seconds="$((now_epoch - start_epoch))"
  if ((elapsed_seconds >= wait_timeout_seconds)); then
    echo "Timed out waiting for MQ REST endpoint after ${wait_timeout_seconds}s." >&2
    exit 1
  fi

  echo "Waiting for MQ REST endpoint (${elapsed_seconds}s elapsed)..."
  sleep "${wait_interval_seconds}"
done
