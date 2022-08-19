#!/bin/bash

source ./module.sh

if [ ! -f "$MODULE_NAME-$VERSION.tar.gz" ]; then
	wget https://sourceforge.net/projects/plplot/files/plplot/5.15.0%20Source/plplot-5.15.0.tar.gz/download -O plplot-5.15.0.tar.gz
	tar -xvzf $MODULE_NAME-$VERSION.tar.gz
fi

module load cmake/3.18.0

pushd $SRC_DIR
mkdir -p build
pushd build
cmake .. -DCMAKE_INSTALL_PREFIX=$INSTALL_PREFIX
make -j 8 all
popd
popd
