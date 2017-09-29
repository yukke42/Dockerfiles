#!/bin/bash

source container.conf

docker run -it --rm \
  -h $CONTAINER_HOST \
  $IMAGE_REPOSITORY:$IMAGE_TAG $COMMAND
