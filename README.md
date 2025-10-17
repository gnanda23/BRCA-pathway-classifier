# BRCA Pathway Classifier

This repository contains a reproducible pipeline for annotating BRCA1/BRCA2 variants using the Ensembl Variant Effect Predictor (VEP), and summarizing key variant statistics for downstream ML applications.

---

## 📁 Project Structure

```
BRCA-pathway-classifier/
├── data/
│   ├── raw/                     # Input files to VEP
│   │   ├── brca_input_fixed.vcf
│   │   └── brca_vep_output.tsv
│   └── processed/               # Cleaned and filtered outputs from VEP
│       ├── brca_vep_output_clean.csv
│       ├── brca_vep_filtered.tsv
│       └── brca_vep_filtered_BRCA1_2.tsv
│
├── results/
│   ├── tables/
│   │   ├── brca_summary_statistics.csv
│   │   └── brca_summary_statistics.md
│   └── figures/                 # Reserved for future plots
│
├── scripts/
│   └── run_vep.sh               # VEP wrapper script
│
├── notebooks/
│   └── 01_feature_engineering.ipynb
│
├── logs/
│   └── vep_install_notes.txt.rtf
│
├── README.md
├── .gitignore
└── GITHUB_SETUP.md
```

---

## 🧪 Pipeline Overview

### Step 1: Prepare VCF Input
The file `brca_input_fixed.vcf` contains curated BRCA1 and BRCA2 variants.

### Step 2: Run VEP
Use the wrapper script:
```bash
bash scripts/run_vep.sh
```
This generates the annotated output: `brca_vep_output.tsv`.

### Step 3: Filter and Summarize
Key output files:
- `brca_vep_filtered_BRCA1_2.tsv`: Only BRCA1 and BRCA2 transcripts
- `brca_summary_statistics.csv`: Aggregated consequence and gene stats

---

## 🚫 Not Included in GitHub

To comply with GitHub file size limits and licensing:
- ClinVar and 1000 Genomes data files are not included
- You may manually download these as needed from NCBI/ClinVar

---

## 📌 Requirements

- Ensembl VEP (v115.2)
- Perl 5, Homebrew (Mac), and VEP plugins
- Python 3.8+ for notebooks and summary analysis

---

## 👥 Author

This pipeline is part of a research project exploring environmental modulation of BRCA variant pathogenicity.
