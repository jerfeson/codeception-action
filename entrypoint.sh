#!/bin/sh -l


service nginx start

service nginx status

# Run codeception tests
vendor/bin/codecept run $*
