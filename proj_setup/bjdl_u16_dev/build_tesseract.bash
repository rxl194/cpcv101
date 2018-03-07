#!/bin/bash

mkdir -p ~/git; cd ~/git
rm -rf tesseract
git clone https://github.com/rxl194/tesseract
cd tesseract
./autogen.sh
./configure
make |& tee build.log 
sudo make install; 
sudo ldconfig
sudo make training |& tee build.training.log
sudo make training-install
sudo make clean

cd /usr/local/share/tessdata
#wget https://storage.googleapis.com/fp.yelpista.com/gae-persist/tessdata.eng.chi.tar
#cp /mnt/gcs-bucket/gae-persist/tessdata.eng.chi.tar /tmp
cp ~/Downloads/tessdata.eng.chi.tar /tmp
sudo tar -xvf /tmp/tessdata.eng.chi.tar
rm /tmp/tessdata.eng.chi.tar
cd

