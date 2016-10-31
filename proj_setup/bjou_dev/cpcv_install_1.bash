#!/bin/bash

apt-get update  -y
apt-get install -y software-properties-common
add-apt-repository -y ppa:mc3man/trusty-media

apt-get update  -y
apt-get dist-upgrade -y
apt-get install -y ffmpeg
apt-get update -y
apt-get upgrade -y
apt-get install -y build-essential cmake git pkg-config
apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
apt-get install -y libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
apt-get install -y libatlas-base-dev gfortran
apt-get install -y python python-pip python-dev python-setuptools
apt-get install -y python2.7 python2.7-dev
apt-get install -y python3.5 python3.5-dev
apt-get install -y autoconf automake libtool
apt-get install -y libjpeg62-dev zlib1g-dev libicu-dev libpango1.0-dev libcairo2-dev

apt-get update -y &&  apt-get -y upgrade
apt-get -y dist-upgrade && apt-get -y autoremove

apt-get install -y git-core curl libssl-dev libreadline-dev
apt-get install -y libyaml-dev libsqlite3-dev libxml2-dev libxslt1-dev 
apt-get install -y libcurl4-openssl-dev python-software-properties
apt-get install -y python-numpy python-scipy python-matplotlib
apt-get install -y python3-numpy python3-scipy python3-matplotlib
apt-get install -y ipython ipython-notebook python-pandas python-sympy python-nose
apt-get install -y  libatlas-dev libatlas3gf-base
pip install -U scikit-learn
pip install -U mahotas
pip install -U nltk
apt-get install -y qt-sdk unzip libtbb2 libtbb-dev 
apt-get install -y libboost-all-dev
apt-get install -y libeigen2-dev libeigen3-dev 
apt-get install -y checkinstall libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev 
apt-get install -y libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev
apt-get install -y libopencore-amrwb-dev libtheora-dev libvorbis-dev
apt-get install -y libxvidcore-dev x264 v4l-utils qt5-default

apt-get install -y wget libavfilter-dev libopenexr-dev libxine2-dev  libtiff5-dev

# Install leptonica-1.71
/bin/bash ../dkou_dev/dkou-u14-2/build_leptonica-1.71.bash
/bin/bash ../dkou_dev/dkou-u14-2/build_tesseract.bash

