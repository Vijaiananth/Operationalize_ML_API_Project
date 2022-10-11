#!/usr/bin/env bash

#Assumes this is built
# See `run_docker.sh`

# Step 1:
# Create your on docker ID here
dockerpath="vijaiananths/udacityproject:latest"

# Step 2:  
# Authenticate & Tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag app $dockerpath

# Step 3:
# Push Image
docker push $dockerpath