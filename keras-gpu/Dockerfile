FROM tensorflow/tensorflow:latest-gpu-py3

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    build-essential \
    language-pack-ja \
    git \
    sudo

ENV USERNAME root
ENV HOME /home/$USERNAME
WORKDIR $HOME
