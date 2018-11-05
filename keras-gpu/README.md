# Keras Docker Image

## Requirements
- nvidia-docker2
    - [install](https://github.com/NVIDIA/nvidia-docker/wiki/Installation-(version-2.0)#installing-version-20)

## Build

```
$ docker build -t keras-gpu .
```


## Run

```
$ docker run -it -h tensor --runtime=nvidia keras-gpu /bin/bash 
root@tensor:~# nvidia-smi
# このコマンドが機能すればホストPCのGPUを利用できている
```
