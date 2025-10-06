#!/bin/bash
# check_processes.sh - Checks if certain processes are active
# Usage: bash check_processes.sh <process1> <process2> ...

if [ $# -eq 0 ]; then
    echo "Usage: $0 <process1> <process2> ..."
    exit 1
fi

for process in "$@"; do
if pgrep -x "$process" >/dev/null; then
    echo "✅ The process '$process' is running."
else
    echo "⚠️  The process '$process' is not running"
fi
done