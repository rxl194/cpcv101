#!/bin/bash

mkdir -p /git
cd /git
git clone https://github.com/rxl194/leptonica-1.71
cd leptonica-1.71
mkdir build; cd build
../configure
make; make install; ldconfig
make clean
cd

