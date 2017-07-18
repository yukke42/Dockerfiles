# Docker

# 環境
```
$ uname -a
Linux debian 4.9.0-3-amd64 #1 SMP Debian 4.9.30-2+deb9u1 (2017-06-18) x86_64 GNU/Linux
$ cat /etc/debian_version
9.0
```

## インストール
```
$ sudo ./install.sh
```
```
sudo apt-get install docker
```

## 初期環境のイメージ作成
```
$ ./create_init_container.sh
```

## 実行
- Dockerfile
  - [参考](http://docs.docker.jp/engine/articles/dockerfile_best-practice.html)
  - [chpasswd](http://thr3a.hatenablog.com/entry/20140818/1408339961)
  - [特定ユーザーでログイン](https://blog.mosuke.tech/entry/2015/01/24/213255/)
    - `/bin/bash`をコマンドとするとルートディレクトリから実行される
    - `su - USERNAME`とすることでそのユーザーのホームディレクトリから実行される
  - [Docker RUN](http://docs.docker.jp/engine/reference/run.html#docker-run)
```
$ docker run -u yusuke -h test -it ubuntu/yusuke:init /bin/bash
```

<!-- ## Ubunutuの日本語環境
```
wget -q https://www.ubuntulinux.jp/ubuntu-ja-archive-keyring.gpg -O- | sudo apt-key add -
wget -q https://www.ubuntulinux.jp/ubuntu-jp-ppa-keyring.gpg -O- | sudo apt-key add -
sudo wget https://www.ubuntulinux.jp/sources.list.d/xenial.list -O /etc/apt/sources.list.d/ubuntu-ja.list
sudo apt-get update
``` -->
