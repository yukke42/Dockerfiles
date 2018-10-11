# Keras Docker Image

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
