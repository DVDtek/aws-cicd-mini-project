#!/usr/bin/env bash
set -euo pipefail

APP_DIR='/home/ec2-user/aws-cicd-mini-project'
PID_FILE="$APP_DIR/app.pid"

if [[ -f "$PID_FILE" ]]; then
    pid=$(cat "$PID_FILE")
    if kill -0 "$pid" 2>/dev/null; then
        kill "$pid"
        for _ in {1..20}; do
            kill -0 "$pid" 2>/dev/null || break
            sleep 1
        done
    fi
    rm -f "$PID_FILE"
fi