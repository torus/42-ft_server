.PHONY: build

run:
	sudo docker run -ti -p 8080:80 -v $$PWD/srcs:/srcs --rm ft_server bash

build:
	sudo docker build -t ft_server .
