#!/bin/sh
# Both index pages are phpinfo() with the xdebug extension loaded.
set -e
curl -fsS http://xdebug2/ | grep -qi 'xdebug'
curl -fsS http://xdebug3/ | grep -qi 'xdebug'
