#!/bin/bash
# system_report.sh - System Report (CPU, memory, disk)
# Usage: bash system_report.sh

EXIT="system_report.txt"

{
    echo "===== System Report ====="
    echo "Date: $(date)"
    echo
    echo "CPU:"
    top -bn | grep "Cpu(s)"
    echo
    echo "Memory:"
    free -h
    echo
    echo "Disk Space:"
    df -h
    echo
} > "$EXIT"

echo "Report generated in $EXIT ✅"