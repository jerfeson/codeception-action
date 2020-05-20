#!/bin/sh -l


service nginx start

service nginx status

ls /github/workspace/public

# Run codeception tests
vendor/bin/codecept run $*
