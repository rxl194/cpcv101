FROM ubuntu:14.04

MAINTAINER rxl194

RUN apt-get update  -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:mc3man/trusty-media

RUN apt-get update  -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y ffmpeg
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y build-essential cmake git pkg-config
RUN apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
RUN apt-get install -y libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
RUN apt-get install -y libatlas-base-dev gfortran
RUN apt-get install -y python python-pip python-dev python-setuptools
RUN apt-get install -y python2.7 python2.7-dev
RUN apt-get install -y autoconf automake libtool
RUN apt-get install -y libjpeg62-dev zlib1g-dev libicu-dev libpango1.0-dev libcairo2-dev

RUN apt-get update -y &&  apt-get -y upgrade
RUN apt-get -y dist-upgrade && apt-get -y autoremove

RUN apt-get install -y git-core curl libssl-dev libreadline-dev
RUN apt-get install -y libyaml-dev libsqlite3-dev libxml2-dev libxslt1-dev 
RUN apt-get install -y libcurl4-openssl-dev python-software-properties
RUN apt-get install -y python-numpy python-scipy python-matplotlib
RUN apt-get install -y ipython ipython-notebook python-pandas python-sympy python-nose
RUN apt-get install -y  libatlas-dev libatlas3gf-base
RUN pip install -U scikit-learn
RUN pip install -U mahotas
RUN pip install -U nltk
RUN apt-get install -y qt-sdk unzip libtbb2 libtbb-dev libdc1394-22-dev
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y libeigen2-dev libeigen3-dev 
RUN apt-get install -y checkinstall libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev 
RUN apt-get install -y libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev
RUN apt-get install -y libopencore-amrwb-dev libtheora-dev libvorbis-dev
RUN apt-get install -y libxvidcore-dev x264 v4l-utils qt5-default

