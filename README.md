# BRCA Pathway Classifier: VEP Setup

This repository contains input/output files and scripts to reproduce the Ensembl Variant Effect Predictor (VEP) analysis for BRCA1/2 variants.

## Files

- `data/raw/brca_input_fixed.vcf`: Cleaned VCF input file (chr17 and chr13)
- `data/raw/brca_vep_output.tsv`: Annotated VEP output file (tab-delimited)
- `scripts/run_vep.sh`: Shell script to run VEP with offline cache
- `README.md`: This documentation

## Reproduction Instructions

Run the following:
```bash
bash scripts/run_vep.sh
```

Ensure VEP is installed and offline cache is present in `/Volumes/Seagate8/.vep`.

## Notes

- VEP version: 115
- Assembly: GRCh38
- Uses `--everything` for full annotations
