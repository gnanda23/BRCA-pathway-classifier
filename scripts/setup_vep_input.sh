#!/bin/bash

# Create working directory
mkdir -p ~/brca_classifier/clinvar_data
cd ~/brca_classifier/clinvar_data

# Download latest ClinVar VCF (GRCh38)
curl -O https://ftp.ncbi.nlm.nih.gov/pub/clinvar/vcf_GRCh38/clinvar.vcf.gz
curl -O https://ftp.ncbi.nlm.nih.gov/pub/clinvar/vcf_GRCh38/clinvar.vcf.gz.tbi

# Extract BRCA1/2 variants only
bcftools view -i 'INFO/GENEINFO ~ "BRCA1|BRCA2"' clinvar.vcf.gz -Oz -o brca_clinvar.vcf.gz
bcftools index brca_clinvar.vcf.gz

# Filter for high-confidence variants (multiple submitters, criteria provided)
bcftools view -i 'INFO/CLNSIGCONF != "." && INFO/CLNREVSTAT ~ "criteria_provided, multiple_submitters"' \
brca_clinvar.vcf.gz -Oz -o brca_clinvar_highconf.vcf.gz
bcftools index brca_clinvar_highconf.vcf.gz

# Annotate with VEP
/Users/geetmacbookpro/vep_project/ensembl-vep/vep \
-i brca_clinvar_highconf.vcf.gz \
-o brca_vep_output.txt \
--cache --offline --vcf \
--assembly GRCh38 \
--everything \
--symbol --plugin LoF \
--force_overwrite
