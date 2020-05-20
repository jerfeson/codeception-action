#!/bin/sh -l

cat /etc/nginx/conf.d/default.conf

service nginx start

service nginx status

# Run codeception tests
vendor/bin/codecept run $*
