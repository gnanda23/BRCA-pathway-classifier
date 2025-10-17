# BRCA Variant VEP Project on macOS
VEP install guide, plugin setup, and project docs for BRCA variant classifier

# 🧬 VEP macOS Installation — BRCA Variant Classifier Project

This document captures the key steps for setting up Ensembl VEP on macOS for the BRCA pathway classifier project.  

---

## ✅ Environment Summary

- **OS:** macOS (Apple Silicon M-series)
- **Project Folder:** `/Volumes/Seagate 8/BRCA-pathway-classifier`
- **VEP Installed At:** `~/vep_project/ensembl-vep/`
- **VEP Cache Directory:** `/Volumes/Seagate 8/.vep`
- **VEP Version:** 115
- **LoF Plugin:** Enabled
- **Assembly:** GRCh38
- **Cache Type:** Merged

---

## 📦 Installation Commands

```bash
# Install htslib via Homebrew
brew install htslib

# Clone VEP
git clone https://github.com/Ensembl/ensembl-vep.git ~/vep_project/ensembl-vep
cd ~/vep_project/ensembl-vep

# Run installer with external cache
perl INSTALL.pl \
  --CACHEDIR "/Volumes/Seagate 8/.vep" \
  --PLUGINS LoF \
  --ASSEMBLY GRCh38 \
  --CACHE_VERSION 115 \
  --NO_HTSLIB