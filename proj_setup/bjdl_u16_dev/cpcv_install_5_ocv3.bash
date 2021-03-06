#!/bin/bash

sudo rm -rf /opt/ocv3.4
sudo mkdir -p /opt/ocv3.4
sudo chmod a+rwx /opt/ocv3.4

mkdir -p ~/git; cd ~/git
rm -rf  ocv3.4 ocv3.4_contrib
git clone -b 3.3 https://github.com/rxl194/opencv ocv3.4
git clone -b 3.3 https://github.com/rxl194/opencv_contrib ocv3.4_contrib
cd  ocv3.4
rm -rf ubuntu; mkdir -p ubuntu; cd ubuntu
cmake -D CMAKE_BUILD_TYPE=RELEASE \
  -D CMAKE_INSTALL_PREFIX=/opt/ocv3.4 \
  -D INSTALL_C_EXAMPLES=ON \
  -D INSTALL_PYTHON_EXAMPLES=ON \
  -D OPENCV_EXTRA_MODULES_PATH=~/git/ocv3.4_contrib/modules \
  -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON \
  -D WITH_QT=ON -D WITH_CUDA=OFF -D WITH_OPENGL=ON -D WITH_VTK=ON -D WITH_FFMPEG=OFF \
  .. |& tee cmake.log
make |& tee build.log
sudo make install |& tee install.log


sudo cp lib/cv2.so /usr/local/lib/python2.7/dist-packages

#cp lib/cv2.so /opt/meanstack-3.2.9-0/miniconda2/lib/python2.7/site-packages
sudo cp ./lib/python3/cv2.cpython-35m-x86_64-linux-gnu.so  /usr/local/lib/python3.5/dist-packages

sudo cp -p unix-install/opencv.pc /usr/lib/pkgconfig
sudo checkinstall
sudo rm /etc/ld.so.conf.d/opencv.conf
sudo sh -c 'echo "/opt/ocv3.4/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig

cd

