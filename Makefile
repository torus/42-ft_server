.PHONY: build run run-autoindex sh stop

run:
	sudo docker run --name ft -ti -p 8001:8001 -p 443:443 -v $$PWD/srcs:/srcs --rm ft_server || true

run-autoindex:
	sudo docker run -e AUTOINDEX=on --name ft -ti -p 8001:8001 -p 443:443 -v $$PWD/srcs:/srcs --rm ft_server || true

build:
	sudo docker build -t ft_server .

sh:
	sudo docker exec -ti ft bash

stop:
	sudo docker stop ft
