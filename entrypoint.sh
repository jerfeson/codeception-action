#!/bin/sh -l

cat /etc/nginx/conf.d/default.conf

wget -O- -S http://localhost

# Run codeception tests
vendor/bin/codecept run $*
