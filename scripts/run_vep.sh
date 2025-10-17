#!/bin/bash

# Set variables
VEP_PATH="$HOME/vep_project/ensembl-vep/vep"
CACHE_DIR="/Volumes/Seagate8/.vep"
FASTA="$CACHE_DIR/homo_sapiens/115_GRCh38/Homo_sapiens.GRCh38.dna.toplevel.fa.gz"
INPUT_VCF="/Volumes/Seagate8/BRCA-pathway-classifier/data/raw/brca_input_fixed.vcf"
OUTPUT_TSV="/Volumes/Seagate8/BRCA-pathway-classifier/data/raw/brca_vep_output.tsv"

# Run VEP
perl "$VEP_PATH" \
  --cache \
  --offline \
  --dir_cache "$CACHE_DIR" \
  --fasta "$FASTA" \
  --assembly GRCh38 \
  --input_file "$INPUT_VCF" \
  --output_file "$OUTPUT_TSV" \
  --tab \
  --force_overwrite \
  --everything