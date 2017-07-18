#!/bin/bash

# ユーザーを作成するとそのユーザーでログインする
CONTAINER_USER='yukke'
CONTAINER_HOST='test'
HOST_PORT='3000'
CONTAINER_PORT='3000'
HOST_DIR="$HOME/github/renosys/parco/Self-Cellor-web-develop"
CONTAINER_DIR="/home/$CONTAINER_USER/app"
COMMAND="/bin/bash"

# echo -n "IMAGE_REPOSITORY: "; read IMAGE_REPOSITORY
# echo -n "IMAGE_TAG: "; read IMAGE_TAG
IMAGE_REPOSITORY="ubuntu/$CONTAINER_USER"
IMAGE_TAG='gnome-terminal'

XSOCK='/tmp/.X11-unix'

xhost local:$CONTAINER_HOST
# docker run -it -u $CONTAINER_USER -h $CONTAINER_HOST \
docker run -it --rm \
  -h $CONTAINER_HOST \
  --volume=$XSOCK:$XSOCK \
  --env="DISPLAY=${DISPLAY}" \
  $IMAGE_REPOSITORY:$IMAGE_TAG $COMMAND
  # -p $HOST_PORT:$CONTAINER_PORT \
  # -v $HOST_DIR:$CONTAINER_DIR \

xhost -local:
