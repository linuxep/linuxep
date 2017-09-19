#!/bin/bash

#####  APP specific variables  #######
DOCKER_USER=linuxep
IMAGE_NAME=lep
IMAGE_TAG=latest
######################################

echo "Publishing image to Docker Hub: "${DOCKER_USER}/${IMAGE_NAME} with tag as ${IMAGE_TAG}

echo "login wih user:" ${DOCKER_USER}
docker login -u ${DOCKER_USER}

docker push ${DOCKER_USER}/${IMAGE_NAME}':'${IMAGE_TAG}