#!/bin/sh

if ! command -v envsubst > /dev/null 2>&1; then
    echo "Installing envsubst..."
    apt-get update && apt-get install -y gettext-base
fi

cp /app/.env /app/.env.dev.local

envsubst < /app/.env > /app/.env.dev.local

echo ".env.dev.local created:"
cat /app/.env.dev.local

exec "$@"
