# BRCA VEP Offline Setup

This project sets up Ensembl VEP (Variant Effect Predictor) for offline annotation of BRCA ClinVar variants on macOS with cache stored on external hard drive.

## Folder Structure

```
BRCA-pathway-classifier/
├── install/
│   ├── setup_vep.sh
│   └── setup_bio_db_hts.sh
├── scripts/
│   └── run_vep.sh
```

## Instructions

1. Run `install/setup_vep.sh` to install VEP and cache to external drive
2. Run `install/setup_bio_db_hts.sh` to manually build Bio::DB::HTS
3. Run `scripts/run_vep.sh` to annotate your VCF

> Make sure the Homo sapiens cache file finishes downloading completely.
