FROM debian:buster

RUN apt-get update
RUN apt-get install -y default-mysql-server default-libmysqlclient-dev
RUN apt-get install -y php composer nginx
RUN apt-get install -y zip curl

RUN mysql_install_db

WORKDIR /work
RUN curl -O https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.zip
RUN unzip phpMyAdmin-5.1.0-all-languages.zip
WORKDIR /work/phpMyAdmin-5.1.0-all-languages

RUN apt-get install -y php-mysql php-xml php-curl php-zip
RUN sed /AllowNoPassword/s/false/true/ config.sample.inc.php > config.inc.php
RUN echo "\$cfg['PmaAbsoluteUri'] = '/php';" >> config.inc.php

RUN rm -r vendor composer.lock
RUN composer update
RUN composer install

WORKDIR /work
COPY srcs/wordpress-5.6.2.zip /work/
RUN unzip wordpress-5.6.2.zip

ENTRYPOINT /srcs/start.sh
