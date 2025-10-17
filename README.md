# BRCA-pathway-classifier

## Overview
This project uses the Ensembl Variant Effect Predictor (VEP) to annotate BRCA1/BRCA2 variants and perform filtering and summary analysis.

---

## Folder Structure
```
BRCA-pathway-classifier/
├── data/
│   ├── raw/
│   │   ├── brca_input_fixed.vcf              # Placeholder file - replace with your actual VCF
│   │   └── brca_vep_output.tsv               # VEP output file
│   └── processed/
│       └── brca_vep_output_filtered.tsv      # Filtered for BRCA1/BRCA2 only
├── scripts/
│   └── run_vep.sh                            # Bash script to run VEP
└── README.md
```

---

## Setup

Run the following from the project root:

```bash
bash scripts/run_vep.sh
```

Make sure you have:
- Installed Ensembl VEP
- Downloaded the GRCh38 cache and FASTA
- Set correct paths inside `run_vep.sh`

---

## Notes
- This repo is designed for offline use.
- Make sure your input file is valid and located at `data/raw/brca_input_fixed.vcf`.
