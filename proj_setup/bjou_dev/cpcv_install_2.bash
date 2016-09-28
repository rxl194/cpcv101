#!/bin/bash

mkdir -p /git; cd /git
rm -rf  ocv2.4.13 
git clone -b 2.4 https://github.com/rxl194/opencv ocv2.4.13
cd  ocv2.4.13
rm -rf ubuntu; mkdir -p ubuntu; cd ubuntu
cmake -D CMAKE_INSTALL_PREFIX=/opt/ocv2.4.13 \
  -D INSTALL_PYTHON_EXAMPLES=ON \
  -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON \
  -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_VTK=ON -D WITH_FFMPEG=OFF \
  .. |& tee cmake.log
make |& tee build.log
make install
cp lib/cv2.so /usr/local/lib/python2.7/dist-packages
cp -p unix-install/opencv.pc /usr/lib/pkgconfig
#checkinstall
sh -c 'echo "/opt/ocv2.4.13/lib" > /etc/ld.so.conf.d/opencv.conf'
ldconfig
cd

