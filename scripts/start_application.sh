#!/usr/bin/env bash
set -euo pipefail

APP_DIR='/home/ec2-user/aws-cicd-mini-project'
PID_FILE="$APP_DIR/app.pid"
LOG_FILE='/var/log/aws-cicd-mini-project.log'

cd "$APP_DIR"
nohup python3 app.py >> "$LOG_FILE" 2>&1 &
echo $! > "$PID_FILE"
chown ec2-user:ec2-user "$PID_FILE"