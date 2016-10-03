#!/bin/bash

mkdir -p /git; cd /git
rm -rf tesseract
git clone https://github.com/rxl194/tesseract
cd tesseract
./autogen.sh
./configure
make |& tee build.log 
make install; ldconfig
make training |& tee build.training.log
make training-install
make clean
cd /usr/local/share/tessdata
wget https://storage.googleapis.com/fp.yelpista.com/tessdata.eng.chi.tar
tar -xvf tessdata.eng.chi.tar
rm tessdata.eng.chi.tar
cd

