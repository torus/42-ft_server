.PHONY: build run sh stop

run:
	sudo docker run --name ft -ti -p 443:443 -v $$PWD/srcs:/srcs --rm ft_server

build:
	sudo docker build -t ft_server .

sh:
	sudo docker exec -ti ft bash

stop:
	sudo docker stop ft
