#!/bin/bash

function terminate_all() {
	echo
    echo Terminating...
    kill $NGINX_PID
    kill $MYSQLD_PID
    kill $PHPMYADMIN_PID
    kill $WORDPRESS_PID
    echo Done. Bye.
}

trap 'terminate_all' 2

echo '<?php phpinfo(); ?>' > /var/www/html/phpinfo.php
cp /work/index.html /var/www/html/
mkdir -p /var/www/html/folder/
cp /work/secret.html /var/www/html/folder/
cp /work/wp-config.php /work/wordpress/

if [ x$NOAUTOINDEX = x ]; then
	sed s/@AUTOINDEX@/on/ /work/nginx.conf.in > /work/nginx.conf;
else
	sed s/@AUTOINDEX@/off/ /work/nginx.conf.in > /work/nginx.conf;
fi

nginx -c /work/nginx.conf &
NGINX_PID=$!

mysqld_safe &
MYSQLD_PID=$!

(cd /work/phpMyAdmin-5.1.0-all-languages && exec php -S 0.0.0.0:8000) &
PHPMYADMIN_PID=$!

(cd /work/wordpress && exec php -S 0.0.0.0:8001) &
WORDPRESS_PID=$!

echo Nginx $NGINX_PID
echo MySQL $MYSQLD_PID
echo phpMyAdmin $PHPMYADMIN_PID
echo WordPress $WORDPRESS_PID

sleep 1; mysqladmin create wordpress
echo Database wordpress created
cat > /dev/null
