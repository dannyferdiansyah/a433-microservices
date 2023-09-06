#!/bin/bash

IMAGE_NAME="item-app"
IMAGE_TAG="v1"
DOCKERHUB_IMAGE_NAME="dannyferdiansyah/$IMAGE_NAME"
docker build -t $IMAGE_NAME:$IMAGE_TAG .
docker images
docker tag $IMAGE_NAME:$IMAGE_TAG $DOCKERHUB_IMAGE_NAME:$IMAGE_TAG
docker login
docker push $DOCKERHUB_IMAGE_NAME:$IMAGE_TAG
echo "Image berhasil diunggah ke Docker Hub dengan nama: $DOCKERHUB_IMAGE_NAME:$IMAGE_TAG"