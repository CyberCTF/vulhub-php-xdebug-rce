# Vulhub's php/xdebug-rce (in ../xdebug2/app/) runs vulhub/php:7.4-xdebug with index.php
# mounted in /var/www/html. Isoloom has no bind mounts, so this image copies the same file to
# the same place. A build context can't reach ../xdebug2/app/, so index.php here is a copy of
# ../xdebug2/app/index.php, unchanged. Nothing else differs.
FROM vulhub/php:7.4-xdebug
COPY index.php /var/www/html/index.php
