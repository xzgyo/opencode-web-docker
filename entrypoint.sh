#!/usr/bin/env bash
set -euo pipefail

export HOST="${HOST:-127.0.0.1}"
export PORT="${PORT:-4096}"

exec /usr/local/bin/opencode web --hostname "$HOST" --port "$PORT" "$@"