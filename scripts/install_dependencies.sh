#!/usr/bin/env bash
set -euo pipefail

APP_DIR='/home/ec2-user/aws-cicd-mini-project'

cd "$APP_DIR"
python3 -m pip install --upgrade pip
python3 -m pip install -r requirements.txt