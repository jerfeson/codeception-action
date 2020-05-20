#!/bin/sh -l


service nginx start
service php7.3-fpm restart

service nginx status
service php7.3-fpm status

chmod -R 660 /github/workspace/data/keys/oauth/

# Run codeception tests
vendor/bin/codecept run $*
