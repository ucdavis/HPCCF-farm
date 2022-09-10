#!/bin/bash

source ./module.sh
module load phyml

sudo mkdir -p $INSTALL_PREFIX
sudo mkdir -p `dirname $MODULEFILE_INSTALL_DEST`
sudo cp $MODULEFILE_SOURCE $MODULEFILE_INSTALL_DEST

sudo cp -r $SRC_DIR/dist/* $INSTALL_PREFIX/
sudo cp $phyml_HOME/bin/phyml $INSTALL_PREFIX/exe/phyml/PhyML_3.0_linux64
