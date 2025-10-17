# BRCA Pathway Classifier: VEP Annotation Pipeline

This repository contains scripts and data files for annotating BRCA1 and BRCA2 variants using the Ensembl Variant Effect Predictor (VEP). The annotation is performed offline using a local cache on an external drive.

## 🔧 Requirements

- Ensembl VEP (v115)
- Local cache directory with species `homo_sapiens`, assembly `GRCh38`
- FASTA file: `Homo_sapiens.GRCh38.dna.toplevel.fa.gz`
- External storage mounted at: `/Volumes/Seagate8/`

## 📁 Directory Structure

```
BRCA-pathway-classifier/
├── data/
│   └── raw/
│       ├── brca_input_fixed.vcf
│       └── brca_vep_output.tsv
├── scripts/
│   └── run_vep.sh
└── README.md
```

## 📥 Input

VCF input file:  
`data/raw/brca_input_fixed.vcf`

## 📤 Output

VEP results (tab-delimited):  
`data/raw/brca_vep_output.tsv`

## ▶️ To Run

Make sure the script is executable and run it using:

```bash
chmod +x scripts/run_vep.sh
bash scripts/run_vep.sh
```

## ⚙️ Script Details

`scripts/run_vep.sh` runs the VEP with:

- Offline mode (`--offline`)
- Custom cache and FASTA path
- Full annotation (`--everything`)
- GRCh38 assembly
- Output in TSV (`--tab`)

## 🚫 Note

- LoFTEE and other plugins are not currently active in this script.
- Ensure the path `/Volumes/Seagate8/.vep` is correctly mounted and contains the appropriate VEP cache files.

---

© 2025 BRCA Pathway Classifier Project