#!/usr/bin/env bash
set -euo pipefail

for _ in {1..30}; do
    if curl --fail --silent --show-error http://127.0.0.1:5000/ > /dev/null; then
        exit 0
    fi
    sleep 2
done

echo 'Application failed to respond on port 5000.' >&2
exit 1