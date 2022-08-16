#!/bin/bash

source ./module.sh

# Prefers older gcc
module load gcc/5.5.0

curl -OL https://www2.math.su.se/PATHd8/PATHd8.zip
unzip -o PATHd8.zip

echo `gcc --version`
gcc PATHd8.c -O3 -fPIC -lm -o PATHd8
