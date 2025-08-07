#!/bin/bash

echo "Preparing app ..."

# Create a custom network (if not exists)
docker network inspect app-network >/dev/null 2>&1 || docker network create app-network

# Create persistent volume for Redis (if not exists)
docker volume inspect redis-data >/dev/null 2>&1 || docker volume create redis-data

# Build the Flask app image
docker build -t my-flask-app ./app

echo "Preparation complete."

