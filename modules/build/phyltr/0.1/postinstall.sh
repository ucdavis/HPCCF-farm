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

# for some reason the IG files come encoded as latin1 instead of UTF-8
# and this breaks the python script so we convert first
iconv -f iso-8859-1 -t utf-8 -o Repbase_ERV.ig Repbase_ERV.latin1.ig
iconv -f iso-8859-1 -t utf-8 -o Repbase_LTR.ig Repbase_LTR.latin1.ig

rm -f Repbase_ERV_LTR.*
cat Repbase_LTR.fa Repbase_ERV.fa >> Repbase_ERV_LTR.fasta
cat Repbase_LTR.ig Repbase_ERV.ig >> Repbase_ERV_LTR.ig
RepbaseIG2superfamilies.py < Repbase_ERV_LTR.ig > Repbase_ERV_LTR.SF
cut -f1 < Repbase_ERV_LTR.SF > Repbase_ERV_LTR.list

sudo cp Repbase_ERV_LTR.fasta Repbase_ERV_LTR.SF Repbase_ERV_LTR.list $INSTALL_PREFIX/RepeatDatabases/Repbase/

sudo mkdir -p $INSTALL_PREFIX/RepeatDatabases/Dfam
sudo cp Dfam_ERV_LTR.hmm Dfam_ERV_LTR.list Dfam_ERV_LTR.SF $INSTALL_PREFIX/RepeatDatabases/Dfam/
