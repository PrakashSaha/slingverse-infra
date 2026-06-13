#!/bin/bash
set -e

BACKUP_DIR="/opt/backups/slingverse"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p $BACKUP_DIR

docker compose ps > $BACKUP_DIR/containers_$DATE.txt
docker volume ls > $BACKUP_DIR/volumes_$DATE.txt
