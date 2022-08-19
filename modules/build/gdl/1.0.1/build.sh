#!/bin/bash

source ./module.sh

if [ ! -f "v$VERSION.tar.gz" ]; then
	wget https://github.com/gnudatalanguage/gdl/archive/refs/tags/v$VERSION.tar.gz
	tar -xvzf v$VERSION.tar.gz
fi

module load gsl/2.3
module load netcdf/4.6.1
module load hdf5/1.12.0
module load fftw3/3.3.8
module load proj/7.0.1
module load shapelib/1.5.0
module load plplot/5.15.0

pushd $SRC_DIR
mkdir -p build
pushd build
cmake ..
cmake .. \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_CXX_FLAGS_RELEASE="-O3 -DNDEBUG" \
	-DCMAKE_INSTALL_PREFIX=${INSTALL_PREFIX} \
	-DWXWIDGETS=OFF \
	-DPLPLOTDIR=$PLPLOT_HOME \
	-DGRAPHICSMAGICK=ON \
	-DGRAPHICSMAGICKDIR=/usr/lib/GraphicsMagick-1.3.28/ \
	-DMAGICKDIR=/usr/lib/x86_64-linux-gnu/ImageMagick-6.9.7/bin-q16/ \
	-DNETCDF=ON \
	-DHDF="OFF" \
	-DHDF5="ON" \
	-DMPI="OFF" \
	-DTIFF="ON" \
	-DGEOTIFF="ON" \
	-DLIBPROJ="ON" \
	-DPYTHON="ON" \
	-DPYTHONVERSION="3" \
	-DFFTW="ON" \
	-DUDUNITS2="ON" \
	-DGLPK="ON" \
	-DGRIB="OFF" \
	-DUSE_WINGDI_NOT_WINGCC=ON \
	-DINTERACTIVE_GRAPHICS=OFF
popd
popd
