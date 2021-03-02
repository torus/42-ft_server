#!/bin/sh

echo '<?php phpinfo(); ?>' > /var/www/html/phpinfo.php
cp /srcs/index.html /var/www/html/

nginx -c /srcs/nginx.conf &
mysqld_safe &
(cd /work/phpMyAdmin-5.1.0-all-languages && php -S localhost:8000)
