#!/bin/sh -l


service nginx start
service php7.3-fpm restart

service nginx status
service php7.3-fpm status

ls /github/workspace/public

# Run codeception tests
vendor/bin/codecept run $*
