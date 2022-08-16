#!/bin/bash

source ./module.sh

echo "NOTE: first do: module load phyltr/$VERSION"

if [ ! -f "Dfam.hmm" ]; then
	curl -OL http://dfam.org/releases/Dfam_3.1/families/Dfam.hmm.gz
fi

gunzip Dfam.hmm.gz
DfamExtractLTRelements.py < Dfam.hmm > Dfam_ERV_LTR.hmm
Dfam3.xHMM2SuperFamTable.py < Dfam_ERV_LTR.hmm > Dfam_ERV_LTR.SF
cut -f1 < Dfam_ERV_LTR.SF > Dfam_ERV_LTR.list

sudo mkdir -p $INSTALL_PREFIX/RepeatDatabases/Dfam
sudo cp Dfam_ERV_LTR.hmm Dfam_ERV_LTR.list Dfam_ERV_LTR.SF $INSTALL_PREFIX/RepeatDatabases/Dfam/
