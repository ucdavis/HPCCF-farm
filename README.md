# HPCCF-farm

Non-puppet configuration code for farm. For now, only contains `modulefiles` and associated build
scripts added on or after 2022-08-15. `modules/variables.sh` contains globals used for all module
builds; `modules/build` contains per-module per-version build and install scripts; and
`modules/modulefiles` contains the actual environment modulefiles themselves.
