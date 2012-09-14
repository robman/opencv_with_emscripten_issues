#!/bin/bash
echo "Installing OpenCV 2.4.2"
mkdir OpenCV
cd OpenCV
echo "Installing dependenices"
#sudo apt-get install libopencv-dev
sudo apt-get install build-essential checkinstall cmake pkg-config yasm
sudo apt-get install python-dev python-numpy
#sudo apt-get install libtbb-dev
echo "Downloading OpenCV 2.4.2"
wget -O OpenCV-2.4.2.tar.bz2 http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.2/OpenCV-2.4.2.tar.bz2/download
echo "Installing OpenCV 2.4.2"
tar -xvf OpenCV-2.4.2.tar.bz2
cd OpenCV-2.4.2
mkdir installed
mkdir build
cd build
cmake -D WITH_FFMPEG=OFF -D WITH_CUDA=OFF -D WITH_V4L=OFF -D WITH_GTK=OFF -D WITH_QT=OFF -D WITH_JASPER=OFF -D WITH_JPEG=OFF -D WITH_TIFF=OFF -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=../installed ..
make
sudo make install
cd ..
INSTALL_DIR=`pwd`/installed
sudo echo "$INSTALL_DIR/lib" >> /etc/ld.so.conf
sudo ldconfig
cd ..
echo "OpenCV 2.4.2 setup and installed in $INSTALL_DIR"
echo ""
echo ""
echo "Now you can compile your test code using g++ like this:"
echo "export PKG_CONFIG_PATH=$INSTALL_DIR/lib/pkgconfig"
echo "cd test1"
echo "g++ \`pkg-config --cflags opencv\` test1.cpp \`pkg-config --libs opencv\` -o test1"
