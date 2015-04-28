#!/bin/sh -e

if [ ! -d "m4" ]; then
    mkdir m4
fi
if [ ! -e "config.rpath" ]; then
    touch config.rpath
fi
autoreconf --force --install
./configure
make
