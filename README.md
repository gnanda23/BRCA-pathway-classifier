# BRCA-pathway-classifier

This repository contains all scripts and data for setting up and running the Ensembl Variant Effect Predictor (VEP) to annotate BRCA1/2 variants.

## 🔬 Project Summary

This project is part of a broader machine learning effort to classify BRCA1 and BRCA2 variants based on genomic and environmental factors. This step involves annotating known BRCA variants using the Ensembl VEP offline tool with full cache and FASTA integration.

## 📂 Folder Structure

```
BRCA-pathway-classifier/
├── README.md
├── scripts/
│   └── run_vep.sh
├── data/
│   └── raw/
│       ├── brca_input_fixed.vcf
│       └── brca_vep_output.tsv
├── logs/
│   └── vep_terminal_log.txt
└── setup/
    └── vep_install_notes.txt
```

## ⚙️ Prerequisites

- macOS with Homebrew installed
- Perl (pre-installed on macOS)
- Modules installed via CPAN:
  - `DBI`, `DBD::mysql`, `Archive::Zip`, `Getopt::Long`, etc.
- Ensembl VEP v115+
- External hard drive mounted at `/Volumes/Seagate8/`

## 🚀 Run VEP

To reproduce the VEP annotation run:

```bash
bash scripts/run_vep.sh
```

## 🗂️ Data Notes

- Input VCF: `data/raw/brca_input_fixed.vcf`
- Output TSV: `data/raw/brca_vep_output.tsv`