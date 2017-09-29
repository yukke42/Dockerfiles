#!/bin/bash

source container.conf

printf "\e[32mCreate a new docker iamge\n\
  username: ${CONTAINER_USER}\n\
  image_repository: ${IMAGE_REPOSITORY}:${IMAGE_TAG}\e[m\n"

docker build -t ${IMAGE_REPOSITORY}:${IMAGE_TAG} .
