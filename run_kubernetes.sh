#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dashnum/dash-uda-4:commit1
podname=flaskdemo1
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $podname --image=$dockerpath --port=80 --labels app=$podname


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward $podname 8000:80
