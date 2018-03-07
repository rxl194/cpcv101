#!/bin/bash

pushd .
cd  ~/Downloads/

rm -rf ~/anaconda2
wget https://repo.continuum.io/archive/Anaconda2-5.1.0-Linux-x86_64.sh
bash ./Anaconda2-5.1.0-Linux-x86_64.sh
cp /usr/local/lib/python2.7/dist-packages/cv2.so ~/anaconda2/lib/python2.7/site-packages

## in case python2->import cv2 error
## python2 >> pip install numpy --upgrade

cd  ~/Downloads/
rm -rf ~/anaconda3
wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash ./Anaconda3-4.2.0-Linux-x86_64.sh
rm   ./Anaconda3-4.2.0-Linux-x86_64.sh
cp /usr/local/lib/python3.5/dist-packages/cv2.cpython-35m-x86_64-linux-gnu.so ~/anaconda3/lib/python3.5/site-packages
cd ~/anaconda3/lib; mv libstdc++.so.6 libstdc++.so.6.orig

popd
