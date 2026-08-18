#!/bin/bash

set -e

echo "===== Maven Build Started ====="

./mvnw clean package -DskipTests

echo "===== Maven Build Successful ====="
