# Ubuntu Docker Image

## Build

```
$ docker build -t ubuntu/yukke42 .
```

## Run

```
$ docker run -it -h ubuntu ubuntu/yukke42 /bin/bash
# ホストとディレクトリを共有したい場合
$ docker run -it -v /path/to/hostdir:/path/to/destdir -h ubuntu ubuntu/yukke42 /bin/bash
```
