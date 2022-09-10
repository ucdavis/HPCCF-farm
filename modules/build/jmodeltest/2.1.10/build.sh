#!/bin/bash

source ./module.sh
module load jdk

if [ ! -f "jmodeltest-${VERSION}.tar.gz" ]; then
		curl -L https://github.com/ddarriba/jmodeltest2/archive/refs/tags/v2.1.10r20160303.tar.gz -o jmodeltest-$VERSION.tar.gz
		tar -xvzf jmodeltest-$VERSION.tar.gz
		mv jmodeltest2-2.1.10r20160303 $SRC_DIR
fi

pushd $SRC_DIR
ant jar
popd
