#!/bin/bash
set -e

cd /opt/slingverse-infra

git pull origin main

docker compose pull
docker compose up -d --remove-orphans

docker system prune -f

bash scripts/healthcheck.sh || true
