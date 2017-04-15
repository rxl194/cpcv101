#!/bin/csh

## Nvidia GeForce GTX 1050ti
## 04/2017

#$ sudo apt-get purge nvidia*
#$ sudo reboot

#$ wget http://us.download.nvidia.com/XFree86/Linux-x86_64/375.20/NVIDIA-Linux-x86_64-375.20.run

#$  Ctrl+Alt+F1-F6
#$ sudo service lightdm stop
#$ sudo service gdm stop
#$ sudo init 3

#$ sudo chmod 755 NVIDIA-Linux-x86_64-375.20.run
#$ sudo ./NVIDIA-Linux-x86_64-375.20.run
#$ sudo reboot


