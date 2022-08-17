# PhyLTR

## Software

This module has a LOT of dependencies. See its GitHub page for install details: https://github.com/mcsimenc/PhyLTR/blob/master/INSTALL.md

The modules this version (as of writing, the only version ever released, v0.1) uses on farm are
as follows:

- [x] BEDtools: bedtools/2.27.1
- [x] MAFFT: mafft/7.294
- [x] FastTree2: fastree/2.1.10
- [x] trimAl: trimal/1.4.1
- [x] jModelTest2: installed by me, jmodeltest/2.1.10
- [x] GenomeTools:  genometools/1.5.9
- [x] GENECONV: installed by me, geneconv/1.81a
- [x] PAUP: installed by me, paup/4.0a168
- [x] Circos: circos/0.69
- [x] PATHd8: installed by me, pathd8/1.9.8
- [x] EMBOSS: emboss/6.6.0
- [x] PHYLIP: PHYLIP/3.698
- [x] HMMER3: hmmer/3.3.2
- [x] BLAST+: ncbi-blast/2.8.1+
- [x] MCL: mcl/12-068
- [x] samtools: samtools/1.15.1

If this software is updated in the future (does not appear likely), note that both the modulefile's
`module use` directives *and* the file `CONFIG` pointing to the various `bin` directories and
executables will need to be updated.

## Databases

The `INSTALL` page also describes several databases that need to be prepped. Several of these
come from repbase, for which UC Davis has an institutional license.
For any updates, I would recommend simply using the databases currently installed for v0.1 of this
module. If you want to update them, you can download them as follows, so long as you're on a campus
address:

    curl -L https://www.girinst.org/protected/repbase_extract.php\?division\=\&customdivision\=\&rank\=\&type\=LTR+Retrotransposon\&autonomous\=1\&nonautonomous\=1\&simple\=1\&format\=IG\&sa\=Download > Repbase_LTR.latin1.ig
    curl -L https://www.girinst.org/protected/repbase_extract.php\?division\=\&customdivision\=\&rank\=\&type\=LTR+Retrotransposon\&autonomous\=1\&nonautonomous\=1\&simple\=1\&format\=FASTA\&sa\=Download > Repbase_LTR.fa

    curl -L https://www.girinst.org/protected/repbase_extract.php\?division\=\&customdivision\=\&rank\=\&type\=Endogenous+Retrovirus\&autonomous\=1\&nonautonomous\=1\&simple\=1\&format\=IG\&sa\=Download > Repbase_ERV.latin1.ig
    curl -L https://www.girinst.org/protected/repbase_extract.php\?division\=\&customdivision\=\&rank\=\&type\=Endogenous+Retrovirus\&autonomous\=1\&nonautonomous\=1\&simple\=1\&format\=FASTA\&sa\=Download > Repbase_ERV.fa

Assuming the files are in this `HPCCF-farm/modules/build/phyltr/0.1` folder, you can run
`postinstall.sh` to format them and put them in the correct location.
