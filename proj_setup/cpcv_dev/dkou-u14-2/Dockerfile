FROM us.gcr.io/orderus-v15/dkou-u14-1

MAINTAINER rxl194

RUN apt-get update  -y
RUN apt-get install -y wget libavfilter-dev libopenexr-dev libxine-dev  libtiff4-dev

RUN apt-get purge -y libdc1394-22-dev

# Install leptonica-1.71
ADD build_leptonica-1.71.bash /build_leptonica-1.71.bash
RUN /bin/bash /build_leptonica-1.71.bash
RUN rm -rf /build_leptonica-1.71.bash

# leptonica-1.71 will be installed under /usr/local

# Install tesseract
ADD build_tesseract.bash /build_tesseract.bash
RUN /bin/bash  /build_tesseract.bash
RUN rm -rf /build_tesseract.bash

#ADD tessdata.eng.chi.tar /usr/local/share/tessdata

# tesseract -v
# tesseract 3.04.00
# leptonica-1.71
#  libjpeg 8d : libpng 1.2.50 : libtiff 4.0.3 : zlib 1.2.8

# Install OpenCV3.1.0
ADD build_ocv3.1.0.bash /build_ocv3.1.0.bash
RUN /bin/bash /build_ocv3.1.0.bash
RUN rm -rf /build_ocv3.1.0.bash





