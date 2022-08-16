#!/bin/bash

source ./module.sh

rm -rf $SRC_DIR
curl -OL https://github.com/mcsimenc/PhyLTR/archive/refs/tags/v0.1.tar.gz
tar -xvzf v0.1.tar.gz

