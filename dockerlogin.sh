#!/bin/bash

# Prompt the user for Docker Hub (or Docker registry) credentials
DOCKER_REGISTRY="index.docker.io/v1/"
DOCKER_USERNAME="sjkarthik"
DOCKER_PASSWORD="Sairam@123"
NAMESPACE="$1"
echo "Namespace: $NAMESPACE"
kubectl create secret docker-registry dockerhub --docker-server=$DOCKER_REGISTRY \
          --docker-username=$DOCKER_USERNAME \
            --docker-password=$DOCKER_PASSWORD \
            --docker-email=karthiksj70@gmail.com \
             --namespace=$NAMESPACE\



if [ $? -eq 0 ]; then
  echo "Login to Docker registry ($DOCKER_REGISTRY) succeeded."
else
  echo "Login to Docker registry ($DOCKER_REGISTRY) failed."
fi
