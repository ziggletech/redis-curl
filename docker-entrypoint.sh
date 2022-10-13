#!/usr/bin/env sh

set -e

curl -s -vvv -X "POST" "http://localhost:8001/api/instance/" -H "Content-Type: application/json; charset=utf-8" -d '{"host": "'"${REDIS_HOST}"'","name": "movie-database","connectionType": "STANDALONE","port": '"${REDIS_PORT}"',"password": "'"${REDIS_PASSWORD}"'","tls":{"useTls": true,"clientAuth": false, "verifyServerCert": false }}'

exec "$@"