#!/bin/bash

echo "Removing app ..."

docker rm -f flask-app redis
docker volume rm redis-data
docker network rm app-network
docker rmi my-flask-app

echo "All app resources removed."

