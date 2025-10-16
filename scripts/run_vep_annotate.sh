#!/bin/bash

# Run VEP with merged cache on high-confidence BRCA variants
/Users/geetmacbookpro/vep_project/ensembl-vep/vep \
--cache --offline --merged \
--assembly GRCh38 \
--input_file ~/brca_classifier/clinvar_data/brca_clinvar_highconf.vcf.gz \
--output_file "/Users/geetmacbookpro/My Drive/BRCA-pathway-classifier/data/raw/brca_vep_output.txt" \
--vcf \
--everything \
--symbol \
--plugin LoF \
--force_overwrite
