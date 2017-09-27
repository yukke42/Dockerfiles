PostgreSQL の Docker 化

http://docs.docker.jp/v1.12/engine/examples/postgresql_service.html



## 実行

```
$ docker build -t eg_postgresql .
$ docker run --rm -d -p 54321:5432 --name pg_test eg_postgresql
```



## サーバーへのアクセス

### コンテナのリンク機能を使う

```
$ docker run --rm -t -i --link pg_test:pg eg_postgresql bash
```



### ホストシステムから接続

```
$ psql -h localhost -p 54321 -d testdb -U root --password
```
