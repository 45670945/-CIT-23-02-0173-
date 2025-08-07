#!/bin/bash

echo "Stopping app ..."
docker stop flask-app redis
echo "Containers stopped. State is preserved."

