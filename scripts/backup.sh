#!/bin/bash
# backup.sh - Make a compressed backup
# Usage: bash backup.sh <origin> <destiny>

set -e

if [ $# -ne 2 ]; then
    echo "Usage: $0 <origin> <destiny>"
    exit 1
fi

ORIGIN=$1
DESTINY=$2

if [ ! -d "$DESTINY" ]; then
    echo "The directory does not exist. Creating..."
    mkdir - p "$DESTINY"
fi

DATE=$(date +%Y%m%d-%H%M)
FILE="$DESTINY/backup-$DATE.tar.gz"

echo "Creating backup from $ORIGIN in $FILE..."
tar -czf "$FILE" "$ORIGIN"

echo "Backup completed ✅"