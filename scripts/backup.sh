#!/bin/bash
BACKUP_DIR="/path/to/backup"
DATE=$(date +%Y-%m-%d)

rsync -avh --progress \
  --exclude='.cache' \
  --exclude='.local/share/Trash' \
  --exclude='node_modules' \
  --exclude='.npm' \
  --exclude='.cargo/registry' \
  --exclude='Downloads' \
  ~/ "$BACKUP_DIR/home-$DATE/"
