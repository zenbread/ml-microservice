#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=zenbread/house-prices

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username zenbread
docker tag house-prices:latest zenbread/house-prices

# Step 3:
# Push image to a docker repository
docker push zenbread/house-prices