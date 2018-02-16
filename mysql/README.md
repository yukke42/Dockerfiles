# MySQLのDockerImage作成


## Settings

```
$ cp .env.example .env
```


## Start up

```
$ docker-compose up -d
```


## Access To Server

```
$ mysql -h 127.0.0.1 -P 3306 -u root -t testdb -p
...

$ mysql -h localhost -P 3306 --protocol tcp -u root -t testdb -p
...

```
`-h localhost`でアクセスしたい場合には`--protocol tcp`のオプションをつける。
これは
> mysqlにlocalhostで接続する場合、(おそらく)自動的にunix domain socket経由で接続しようとする

という理由らしい。[参考](https://qiita.com/kazegusuri/items/85478e6863453041dd68)
