#!/bin/bash

source ./module.sh

# only seems to want to compile with gcc 5
module load gcc/5.5.0

if [ ! -f "unix.source.tar.gz" ]; then
    wget https://www.math.wustl.edu/~sawyer/geneconv/unix.source.tar.gz --no-check-certificate
		md5sum -c unix.source.tar.gz.md5 # something is wonky with the wustl cert so lets md5 the file just in case
		tar -xvzf unix.source.tar.gz
		mv unix.source $SRC_DIR
fi

pushd $SRC_DIR
echo `gcc --version`
$CC -DUNIX -o geneconv -O3 -fPIC -march=native geneconv.c version.c vcalc.c vtcalc.c vsetopts.c vread.c vdump.c vutil.c  -lm
#$CC -DUNIX -o geneconv_helper -O3 -fPIC geneconv_helper.c  version.c -lm
popd
