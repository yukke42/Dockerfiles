FROM tensorflow/tensorflow:latest-gpu-py3

RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    language-pack-ja \
    python3.6-dev

RUN ln -s /usr/bin/python3.6 /usr/bin/python

WORKDIR /root