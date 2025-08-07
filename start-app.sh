#!/bin/bash

echo "Starting app ..."

# Start Redis container
docker run -d \
  --name redis \
  --network app-network \
  -v redis-data:/data \
  --restart always \
  redis:alpine

# Start Flask container
docker run -d \
  --name flask-app \
  --network app-network \
  -p 5000:5000 \
  --restart always \
  my-flask-app

echo "The app is running at http://localhost:5000"

