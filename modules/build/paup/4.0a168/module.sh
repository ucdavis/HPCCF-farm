#!/bin/bash

source ../../../variables.sh

MODULE_NAME=paup
VERSION="4.0a168"

SRC_DIR=$MODULE_NAME-$VERSION
INSTALL_PREFIX=$MODULES_ROOT/$MODULE_NAME-$VERSION
MODULEFILE_SOURCE=../../../modulefiles/$MODULE_NAME/$VERSION
MODULEFILE_INSTALL_DEST=$MODULEFILES_PATH/hpc/$MODULE_NAME/$VERSION

echo "Using INSTALL_PREFIX=$INSTALL_PREFIX"
echo "Modulefile source: $MODULEFILE_SOURCE"
echo "Modulefile destination: $MODULEFILE_INSTALL_DEST"
