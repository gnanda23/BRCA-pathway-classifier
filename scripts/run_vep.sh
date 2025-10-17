#!/bin/bash
perl ~/vep_project/ensembl-vep/vep \
  --cache \
  --offline \
  --dir_cache "/Volumes/Seagate8/.vep" \
  --fasta "/Volumes/Seagate8/.vep/homo_sapiens/115_GRCh38/Homo_sapiens.GRCh38.dna.toplevel.fa.gz" \
  --assembly GRCh38 \
  --input_file "/Volumes/Seagate8/BRCA-pathway-classifier/data/raw/brca_input_fixed.vcf" \
  --output_file "/Volumes/Seagate8/BRCA-pathway-classifier/data/raw/brca_vep_output.tsv" \
  --tab \
  --force_overwrite \
  --everything
