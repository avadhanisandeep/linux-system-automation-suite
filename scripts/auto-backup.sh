#!/bin/bash

BACKUP_DIR="$HOME/backups"
DATE=$(date +%F)
FILENAME="home_backup_$DATE.tar.gz"

echo "Creating backup of /home directory..."
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$FILENAME" /home 2>/dev/null

echo "Backup saved to $BACKUP_DIR/$FILENAME"
