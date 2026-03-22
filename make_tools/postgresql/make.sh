#!/bin/bash
set -e

cd $HOME/postgresql-18.3

./configure --prefix=$HOME --enable-cassert --enable-debug --with-libxml --with-icu --with-uuid=e2fs CFLAGS="-ggdb -Og -Wall -fno-strict-aliasing"

make clean
make -j 8
make install

cd contrib
make -j 8
make install