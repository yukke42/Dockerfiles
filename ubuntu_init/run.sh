#!/bin/bash

CONTAINER_USER='yukke'
CONTAINER_HOST='test'
COMMAND="/bin/bash"

# echo -n "IMAGE_REPOSITORY: "; read IMAGE_REPOSITORY
# echo -n "IMAGE_TAG: "; read IMAGE_TAG
IMAGE_REPOSITORY="ubuntu/$CONTAINER_USER"
IMAGE_TAG='init'

docker run -it --rm \
  -h $CONTAINER_HOST \
  $IMAGE_REPOSITORY:$IMAGE_TAG $COMMAND
