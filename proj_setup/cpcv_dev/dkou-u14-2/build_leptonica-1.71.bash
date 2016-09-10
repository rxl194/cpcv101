#!/bin/bash

mkdir -p /git; cd /git
rm -rf leptonica-1.71
git clone https://github.com/rxl194/leptonica-1.71
cd leptonica-1.71
rm -rf build; mkdir -p build; cd build
../configure
make |& tee build.log 
make install; ldconfig
make clean
cd

