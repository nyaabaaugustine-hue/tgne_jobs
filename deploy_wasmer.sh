#!/bin/bash

echo "Building Docker image for Wasmer deployment..."
docker build -t jobbox-app .

echo "Deploying to Wasmer..."
wasmer deploy --image jobbox-app --port 8000