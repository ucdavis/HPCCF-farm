#!/bin/bash

source ./module.sh

#wget https://github.com/samtools/samtools/releases/download/1.15.1/samtools-1.15.1.tar.bz2
#tar -xvf samtools-1.15.1.tar.bz2

pushd $SRC_DIR
echo `gcc --version`
./configure --prefix=$INSTALL_PREFIX
make -j 16
popd
