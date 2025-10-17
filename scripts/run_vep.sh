#!/bin/bash
# Run Ensembl VEP on a VCF file using offline cache

VEP_PATH="/Users/geetmacbookpro/vep_project/ensembl-vep/vep"
INPUT_VCF="/Volumes/Seagate8/BRCA-pathway-classifier/data/clinvar_data/brca_clinvar_highconf.vcf.gz"
OUTPUT_FILE="/Volumes/Seagate8/BRCA-pathway-classifier/data/raw/brca_vep_output.txt"
CACHE_DIR="/Volumes/Seagate8/.vep"

perl "$VEP_PATH" \
--cache --offline \
--dir_cache "$CACHE_DIR" \
--assembly GRCh38 \
--everything \
--symbol \
--vcf \
--force_overwrite \
-i "$INPUT_VCF" \
-o "$OUTPUT_FILE"
