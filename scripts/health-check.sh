#!/bin/bash

set -e

URL="${1:-http://localhost:8080}"

echo "Checking application: $URL"

if curl -f -s "$URL" > /dev/null; then
    echo "Application is UP"
else
    echo "Application is DOWN"
    exit 1
fi
