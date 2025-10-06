#!/bin/bash
# clean_logs.sh - Delete older logs
# Usage: bash clean_logs.sh <route> <days>

set -e

if [ $# -ne 2 ]; then
    echo "Usage: $0 <logs_route> <days>"
    exit 1
fi

ROUTE=$1
DAYS=$2

if [ ! -d "$RUTA" ]; then
    echo "Error: The route $ROUTE does not exist or is not a directory."
    exit 2
fi

echo "Deleting files .log older than $DAYS in route $ROUTE..."
find "$ROUTE" -name "*.log" -type -f -mtime +"$DAYS" -exec rm -v {} \;

echo "Cleaning complete ✅"