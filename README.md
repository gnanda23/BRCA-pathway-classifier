
# BRCA Classifier Final - VEP Annotation

## 🧬 Variant Annotation with VEP

This script annotates high-confidence BRCA1/2 variants using Ensembl VEP with the merged cache.

### ✅ Requirements

- Ensembl VEP installed locally
- VEP cache for GRCh38 with `--merged` format
- LoF plugin
- Input VCF: `brca_clinvar_highconf.vcf.gz`

### 📁 File Structure

- Input: `~/brca_classifier/clinvar_data/brca_clinvar_highconf.vcf.gz`
- Output: `data/raw/brca_vep_output.txt`

### ▶️ How to Run

```bash
bash scripts/run_vep_annotate.sh
```

Ensure the cache has been downloaded using:

```bash
perl INSTALL.pl --NO_HTSLIB --ASSEMBLY GRCh38 --CACHEDIR ~/.vep
```

> Note: This script assumes macOS local VEP install and paths configured.
