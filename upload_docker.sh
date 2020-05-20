#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=prajwalarora4/development

# Step 2:  
# Authenticate & tag
# docker login docker.io
echo "Docker ID and Image: $dockerpath"
docker tag de6d3b7ba551 $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath