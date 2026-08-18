#!/bin/bash

set -e

echo "===== Maven Tests Started ====="

./mvnw test

echo "===== Maven Tests Successful ====="
