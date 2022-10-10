#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub

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