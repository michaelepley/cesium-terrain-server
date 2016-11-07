#!/bin/sh

##
# Install the latest stable release of Go
#
# See <https://golang.org/doc/install/source>
#
echo "  --> preparing to build source"
cd /usr/local/src || exit 1
echo "  --> cloning source"
git clone https://github.com/golang/go.git | exit 1
echo "  --> building"
cd go/src || exit 1
./all.bash || exit 1
echo "  --> Linking executable"
ln -s /usr/local/src/go/bin/go* /usr/local/bin/ || exit 1
