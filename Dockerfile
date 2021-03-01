FROM debian:buster

RUN apt-get update
RUN apt-get install -y default-mysql-server default-libmysqlclient-dev
RUN apt-get install -y php nginx
