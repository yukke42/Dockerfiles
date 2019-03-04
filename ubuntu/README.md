# Ubuntu Docker Image

## Build

### with docker-compose

```
docker-compose build ubunt (ubunt-cuda)
```



### without docker-compose

```bash
docker -f Dockerfile (Dockerfile.cuda) build -t ubuntu .
```



## Run

### with docker-compose

```
docker-compose run ubuntu (ubuntu-cuda) bash
```



### without docker-compose

```
docker run -it (ubuntu-cuda) ubuntu bash
```