# Ubuntu Docker Image

## Build

```
$ docker build -t ubuntu/yukke42 .
```

## Run

```
$ docker run -it -h ubuntu ubuntu/yukke42:ubuntu /bin/bash
# ホストとディレクトリを共有したい場合
$ docker run -it -v /path/to/hostdir:/path/to/destdir -h ubuntu ubuntu/yukke42:ubuntu /bin/bash
```


## インストールするパッケージを追加する際の注意点
- Dockerfileの差分が実行されるのでなるべくインストールするものは分ける
  - 基本パッケージ
  - 追加で必要になったパッケージ
