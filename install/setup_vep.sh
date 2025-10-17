#!/bin/bash
# Install Ensembl VEP (offline mode) with GRCh38 cache

cd ~/vep_project/ensembl-vep

perl INSTALL.pl \
--NO_HTSLIB \
--CACHEDIR "/Volumes/Seagate8/.vep" \
--CACHE_VERSION 115 \
--ASSEMBLY GRCh38
