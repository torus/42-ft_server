ft_server
=========

### tl;dr

```
make build
make run
```

### Docker イメージのビルド

```
sudo docker build -t ft_server .
```

### イメージの実行

`-v` オプションで srcs フォルダを共有する。

```
sudo docker run --name ft -ti -p 443:443 -v $PWD/srcs:/srcs --rm ft_server
```

### autoindex を無効にする

環境変数 `NOAUTOINDEX` に値を設定すると autoindex が無効になる。

```
sudo docker run -e NOAUTOINDEX=on --name ft -ti -p 443:443 -v $PWD/srcs:/srcs --rm ft_server
```
