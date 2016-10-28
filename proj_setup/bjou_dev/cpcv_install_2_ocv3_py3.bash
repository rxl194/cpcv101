#!/bin/bash

mkdir -p ~/git; cd ~/git
rm -rf  ocv3.1.0 ocv3.1.0_contrib
git clone https://github.com/rxl194/opencv ocv3.1.0
git clone https://github.com/rxl194/opencv_contrib ocv3.1.0_contrib
cd  ocv3.1.0
rm -rf ubuntu; mkdir -p ubuntu; cd ubuntu
cmake -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=/opt/ocv3.1.0 \
  -D INSTALL_C_EXAMPLES=ON \
  -D INSTALL_PYTHON_EXAMPLES=ON \
  -D OPENCV_EXTRA_MODULES_PATH=~/git/ocv3.1.0_contrib/modules \
  -D BUILD_EXAMPLES=ON \
  -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON \
  -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_VTK=ON -D WITH_FFMPEG=OFF \
  .. |& tee cmake.log
make |& tee build.log
#make install
#cp lib/cv2.so /usr/local/lib/python2.7/dist-packages
#cp lib/cv2.so /opt/meanstack-3.2.9-0/miniconda2/lib/python2.7/site-packages
#cp -p unix-install/opencv.pc /usr/lib/pkgconfig
#checkinstall
#rm /etc/ld.so.conf.d/opencv.conf
#sh -c 'echo "/opt/ocv3.1.0/lib" > /etc/ld.so.conf.d/opencv.conf'
#ldconfig
#cd

