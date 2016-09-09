#!/bin/bash

mkdir -p /git
cd /git
git clone https://github.com/rxl194/tesseract
cd tesseract
./autogen.sh
./configure
make; make install; ldconfig
make training; make training-install
make clean
cd /usr/local/share/tessdata
wget https://storage.googleapis.com/fp.yelpista.com/tessdata.eng.chi.tar
tar -xvf tessdata.eng.chi.tar
rm tessdata.eng.chi.tar
cd

