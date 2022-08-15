#!/bin/bash

source ../../../variables.sh

MODULE_NAME=jmodeltest
VERSION="2.1.10"

SRC_DIR=jmodeltest-$VERSION
INSTALL_PREFIX=$MODULES_ROOT/$MODULE_NAME-$VERSION
MODULEFILE_SOURCE=../../../modulefiles/jmodeltest/2.1.10
MODULEFILE_INSTALL_DEST=$MODULEFILES_PATH/hpc/$MODULE_NAME/$VERSION

echo "Using INSTALL_PREFIX=$INSTALL_PREFIX"
echo "Modulefile source: $MODULEFILE_SOURCE"
echo "Modulefile destination: $MODULEFILE_INSTALL_DEST"
