#!/usr/bin/env bash
set -euo pipefail

docker compose -f scripts/dev/mq/docker-compose.yml exec -T qm1 runmqsc QM1 < scripts/dev/mq/seed-qm1.mqsc
docker compose -f scripts/dev/mq/docker-compose.yml exec -T qm2 runmqsc QM2 < scripts/dev/mq/seed-qm2.mqsc
