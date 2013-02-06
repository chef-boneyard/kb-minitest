#!/bin/sh
set -e
[ -n "$KB_DEBUG" ] && set -x

# install minitest gem
kb-gem install 'minitest'
