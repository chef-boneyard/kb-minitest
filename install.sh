#!/bin/sh
set -e
[ -n "$JR_DEBUG" ] && set -x

# install minitest gem
jr-gem install 'minitest'
