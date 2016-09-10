#!/bin/bash

mkdir -p /git; cd /git
rm -rf  ocv3.1.0 ocv3.1.0_contrib
git clone https://github.com/rxl194/opencv ocv3.1.0
git clone https://github.com/rxl194/opencv_contrib ocv3.1.0_contrib
cd  ocv3.1.0
rm -rf ubuntu; mkdir -p ubuntu; cd ubuntu
cmake -D OPENCV_EXTRA_MODULES_PATH=/git/ocv3.1.0_contrib/modules \
  -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON \
  -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_VTK=ON -D WITH_FFMPEG=OFF \
  .. |& tee cmake.log
make |& tee build.log
make install; ldconfig
make clean
cd

