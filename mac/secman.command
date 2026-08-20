#!/bin/bash

cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"

exec "$SCRIPT_DIR/SecurityManager.command" "$@"

