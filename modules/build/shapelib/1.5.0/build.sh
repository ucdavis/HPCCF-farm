#!/bin/bash

source ./module.sh


if [ ! -f "$MODULE_NAME-$VERSION.tar.gz" ]; then
	wget http://download.osgeo.org/shapelib/shapelib-1.5.0.tar.gz
	tar -xvzf $MODULE_NAME-$VERSION.tar.gz
fi

pushd $SRC_DIR
./configure --prefix=$INSTALL_PREFIX
make -j 8
popd
