#!/bin/bash

sudo rm -rf /opt/ocv2.4.13
sudo mkdir -p /opt/ocv2.4.13
sudo chmod -R a+rwx /opt/ocv2.4.13

mkdir -p ~/git; cd ~/git
rm -rf  ocv2.4.13 
git clone -b 2.4 https://github.com/rxl194/opencv ocv2.4.13
cd  ocv2.4.13
rm -rf ubuntu; mkdir -p ubuntu; cd ubuntu
cmake -D CMAKE_INSTALL_PREFIX=/opt/ocv2.4.13 \
  -D INSTALL_PYTHON_EXAMPLES=ON \
  -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON \
  -D WITH_QT=ON -D WITH_CUDA=OFF -D WITH_OPENGL=ON -D WITH_VTK=ON -D WITH_FFMPEG=OFF \
  .. |& tee cmake.log
make |& tee build.log
sudo make install |& tee install.log
sudo cp lib/cv2.so /usr/local/lib/python2.7/dist-packages

#mv ~/anaconda2/lib/libstdc++.so.6  ~/anaconda2/lib/orig_libstdc++.so.6
#cp lib/cv2.so ~/anaconda2/lib/python2.7/site-packages

#cp -p unix-install/opencv.pc /usr/lib/pkgconfig
#checkinstall
#sh -c 'echo "/opt/ocv2.4.13/lib" > /etc/ld.so.conf.d/opencv.conf'
#ldconfig
#cd

