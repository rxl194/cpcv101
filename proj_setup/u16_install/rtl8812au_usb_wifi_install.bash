#!/bin/bash

sudo apt-get install build-essential git

cd ~/git
git clone https://github.com/gnab/rtl8812au.git
cd rtl8812au
make

sudo make install
sudo modprobe 8812au
