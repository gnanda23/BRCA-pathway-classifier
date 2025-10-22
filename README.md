# BRCA Pathway Classifier

This repository contains a reproducible pipeline for annotating BRCA1/BRCA2 variants using the Ensembl Variant Effect Predictor (VEP), and summarizing key variant statistics for downstream ML applications.

---

## 📁 Project Structure

```
BRCA-pathway-classifier/
├── data/
│   ├── raw/
│   │   └── brca_input_brca_only.vcf
│   ├── external/
│   │   └── brca_clinvar.vcf.gz
│   └── processed/
│       ├── brca_vep_output_filtered.tsv
│       ├── brca_vep_output_all_filtered.tsv
│       └── brca_features_enriched.csv
│
├── models/
│   └── brca_sandbox_model.pkl
│
├── results/
│   ├── shap_values.csv
│   ├── shap_beeswarm_brca1.png
│   ├── shap_beeswarm_brca2.png
│   ├── top_shap_brca1.csv
│   ├── top_shap_brca2.csv
│   └── shap_values_brca1_vs_brca2.csv
│
├── scripts/
│   ├── run_vep.sh
│   └── vep_summary_stats.py
│
├── notebooks/
│   ├── phase1_vep_annotation/
│   │   ├── 01_vep_input_preparation.ipynb
│   │   ├── 02_vep_annotation_pipeline.ipynb
│   │   └── 03_vep_summary_statistics.ipynb
│   ├── phase2_dataset_build/
│   │   ├── 01_feature_engineering.ipynb
│   │   └── final_01_feature_engineering.ipynb
│   └── phase3_sandbox_model/
│       └── 03_sandbox_model_brca1_vs_brca2_clean.ipynb
│
├── SHAP_Interpretation_BRCA1_vs_BRCA2.pptx
├── Top 15 Features by SHAP Importance (BRCA1 vs BRCA2).png
├── README.md
└── .gitignore
```

---

---

## 🧪 Pipeline Overview

### Phase 1: VEP Annotation
- Input: `brca_input_brca_only.vcf`
- Script: `scripts/run_vep.sh`
- Output: `brca_vep_output_all_filtered.tsv`

### Phase 2: Feature Engineering
- Notebook: `01_feature_engineering.ipynb`
- Output: `brca_features_enriched.csv` (hosted in Releases)

### Phase 3: ML Modeling (Sandbox)
- Notebook: `03_sandbox_model_brca1_vs_brca2_clean.ipynb`
- Output:
  - `brca_sandbox_model.pkl`
  - SHAP plots and tables
---

## 🚫 Not Included in GitHub

To comply with GitHub file size limits:
- `brca_features_enriched.csv` is available [here](https://github.com/gnanda23/BRCA-pathway-classifier/releases)
- ClinVar files must be downloaded manually from NCBI

---

## 📌 Requirements

- Ensembl VEP (v115.2)
- Perl 5, Homebrew (Mac), and VEP plugins
- Python 3.8+ for notebooks and summary analysis

---

## 👥 Author

This pipeline is part of a research project exploring environmental modulation of BRCA variant pathogenicity.

## 🔗 Download Large Feature File

The enriched feature dataset (`brca_features_enriched.csv`, 448MB) is hosted in the [Releases](https://github.com/gnanda23/BRCA-pathway-classifier/releases) section.

---

## 🚀 Getting Started

```bash
# Clone the repo
git clone https://github.com/gnanda23/BRCA-pathway-classifier.git
cd BRCA-pathway-classifier

# (Optional) Create a virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
