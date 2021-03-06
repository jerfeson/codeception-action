#!/bin/sh -l

service nginx start
service php7.3-fpm restart

service nginx status
service php7.3-fpm status

chmod 660 /github/workspace/data/keys/oauth/private.key
chmod 660 /github/workspace/data/keys/oauth/public.key

ls -l /github/workspace/data/keys/oauth/

# Run codeception tests
composer test
