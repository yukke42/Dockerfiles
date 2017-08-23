#!/bin/bash
OS='ubuntu'
USERNAME='yukke'
IMAGE_REPOSITORY="${OS}/${USERNAME}"
IMAGE_TAG='init'

# set up
echo -e "\e[32mCreate a new docker iamge\n\
  username: ${USERNAME}\n\
  image_repository: ${IMAGE_REPOSITORY}:${IMAGE_TAG}\e[m"

docker build -t ${IMAGE_REPOSITORY}:${IMAGE_TAG} .
