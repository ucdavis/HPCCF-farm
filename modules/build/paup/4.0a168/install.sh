#!/bin/bash

source ./module.sh

sudo mkdir -p $INSTALL_PREFIX
sudo mkdir -p `dirname $MODULEFILE_INSTALL_DEST`
sudo cp $MODULEFILE_SOURCE $MODULEFILE_INSTALL_DEST

sudo cp paup $INSTALL_PREFIX/
