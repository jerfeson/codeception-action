#!/bin/sh -l

cat /etc/nginx/conf.d/default.conf

# Run codeception tests
vendor/bin/codecept run $*
