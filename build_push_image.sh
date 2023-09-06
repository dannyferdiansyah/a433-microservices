#!/bin/bash

IMAGE_NAME="item-app"
IMAGE_TAG="v1"
DOCKER_IMAGE_NAME="dannyferdiansyah/$IMAGE_NAME"
docker build -t $IMAGE_NAME:$IMAGE_TAG .
docker images
docker tag $IMAGE_NAME:$IMAGE_TAG $DOCKER_IMAGE_NAME:$IMAGE_TAG
docker login
docker push $DOCKER_IMAGE_NAME:$IMAGE_TAG