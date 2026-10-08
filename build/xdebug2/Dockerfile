# Vulhub's php/xdebug-rce (in app/) runs vulhub/php:7.1-xdebug with index.php mounted
# in /var/www/html. Isoloom has no bind mounts, so this image copies the same file to the
# same place. Nothing else differs.
FROM vulhub/php:7.1-xdebug
COPY app/index.php /var/www/html/index.php
