#!/bin/bash

wget -qO- https://get.docker.com/ | sh
usermod -aG docker $USERNAME
docker pull ubuntu
docker pull centos

shutdown now -r
