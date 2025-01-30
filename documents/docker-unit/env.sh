#!/bin/sh

cp /app/.env /app/.env.dev.local

envsubst < /app/.env > /app/.env.dev.local

echo ".env.dev.local created:"
cat /app/.env.dev.local

exec "$@"
