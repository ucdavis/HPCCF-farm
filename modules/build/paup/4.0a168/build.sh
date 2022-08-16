#!/bin/bash

source ./module.sh


if [ ! -f "paup4a168_ubuntu64.gz" ]; then
	wget http://phylosolutions.com/paup-test/paup4a168_ubuntu64.gz
	gunzip paup4a168_ubuntu64.gz
	mv paup4a168_ubuntu64 paup
fi

chmod +x paup
