#!/bin/sh -l

wget -O- -S http://localhost

# Run codeception tests
vendor/bin/codecept run $*
