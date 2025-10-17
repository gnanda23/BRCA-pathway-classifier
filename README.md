# BRCA Pathway Classifier

A reproducible variant annotation pipeline for identifying and analyzing **BRCA1/BRCA2 genetic variants**, with downstream integration of **pathway, environmental, and clinical annotations**. This repository is designed to power a machine learning model that predicts variant pathogenicity using multi-source enrichment.

---

## 🔬 Project Goals

- Annotate BRCA1 and BRCA2 variants using Ensembl’s Variant Effect Predictor (VEP)
- Identify functional consequences and severity of variants
- Integrate variant annotations with pathway databases and chemical perturbation sources
- Build a machine learning model to classify BRCA variant pathogenicity

---

## 📂 Repository Structure

```
BRCA-pathway-classifier/
│
├── data/
│   ├── raw/
│   │   └── brca_input_fixed.vcf              # Clean input file with BRCA variants
│   └── processed/
│       └── brca_vep_output.tsv               # VEP-annotated TSV output
│
├── scripts/
│   └── run_vep.sh                            # Reproducible bash script to run VEP
│
├── results/
│   ├── brca_summary_statistics.csv           # Summary stats in CSV format
│   └── brca_summary_statistics.md            # Markdown version of summary
│
└── README.md                                 # This file
```

---

## 🚀 How to Reproduce the Pipeline

### 1. Set Up Ensembl VEP

Follow the official instructions:  
https://www.ensembl.org/info/docs/tools/vep/script/vep_installation.html

Or run:

```bash
perl INSTALL.pl \
  --AUTO c \
  --SPECIES homo_sapiens \
  --ASSEMBLY GRCh38 \
  --CACHEDIR /your/cache/path \
  --NO_HTSLIB
```

---

### 2. Run VEP Annotation

Make sure your `.vep` cache and FASTA are installed.

To annotate the BRCA variants, run:

```bash
bash scripts/run_vep.sh
```

This uses:
- `data/raw/brca_input_fixed.vcf` as input
- Outputs to `data/processed/brca_vep_output.tsv`

---

### 3. View Summary Statistics

Find top-level summaries in:
- `results/brca_summary_statistics.md` (readable)
- `results/brca_summary_statistics.csv` (structured)

---

## 📌 Notes

- Assembly: **GRCh38**
- VEP version: **v115.2**
- Input: Variants from BRCA1 and BRCA2 (chr17 and chr13)
- Output includes consequence terms, protein effects, and clinical annotations

---

## 🧠 Next Steps

- Filter for specific functional consequences (LoF, missense, etc.)
- Map to biological pathways and environmental exposures
- Build interpretable classification model (Phase 2)

---

## 👩‍💻 Contributors

- Lead student researcher: [Name]
- Mentor: [Name or leave blank]
- Built with guidance from Ensembl, ClinVar, and CTDbase resources

---

## 📜 License

MIT License (add if desired)