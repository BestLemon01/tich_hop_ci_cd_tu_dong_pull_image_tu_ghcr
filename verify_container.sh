#!/bin/bash
set -e
echo "Starting local verify simulation for GHCR pull..."
docker ps -a --filter "name=payment-verify-app"
