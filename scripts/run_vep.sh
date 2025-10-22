#!/bin/bash

# Set input/output paths
INPUT_FILE="/Volumes/Seagate8/BRCA-pathway-classifier/data/raw/brca_input_fixed.vcf"
OUTPUT_FILE="/Volumes/Seagate8/BRCA-pathway-classifier/data/raw/brca_vep_output.tsv"

# Run VEP
perl ~/vep_project/ensembl-vep/vep \
  --cache \
  --offline \
  --dir_cache "/Volumes/Seagate8/.vep" \
  --fasta "/Volumes/Seagate8/.vep/homo_sapiens/115_GRCh38/Homo_sapiens.GRCh38.dna.toplevel.fa.gz" \
  --assembly GRCh38 \
  --input_file "$INPUT_FILE" \
  --OUTPUT_FILE="/Volumes/Seagate8/BRCA-pathway-classifier/data/processed/brca_vep_output.tsv"
  --tab \
  --force_overwrite \
  --everything
