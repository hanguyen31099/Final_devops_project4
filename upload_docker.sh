#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="ducha31099/udacity"

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker image tag udacity:latest $dockerpath


# Step 3:
# Push image to a docker repository
docker image push $dockerpath