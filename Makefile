.PHONY: build run run-autoindex sh stop

run:
	sudo docker run -e NOAUTOINDEX=on --name ft -ti -p 443:443 --rm ft_server || true

run-autoindex:
	sudo docker run --name ft -ti -p 443:443 --rm ft_server || true

build:
	sudo docker build -t ft_server .

sh:
	sudo docker exec -ti ft bash

stop:
	sudo docker stop ft
