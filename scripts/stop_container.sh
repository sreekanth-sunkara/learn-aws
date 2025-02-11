#!/bin/bash
set -e

# Stop the running container (if any)
#containerId=docker ps | awk -F " " '{print $1}'
#docker rm -f $containerId

# Get the container ID of the running container
containerId=$(docker ps -q)

# Stop and remove the container (if any)
if [ -n "$containerId" ]; then
    docker rm -f $containerId
else
    echo "No running container found."
fi
