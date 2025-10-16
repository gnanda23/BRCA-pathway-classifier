
## VEP Input Setup (Terminal)

This script generates BRCA1/2 high-confidence variant input for VEP:

### Files created:
- `brca_clinvar.vcf.gz` → All BRCA1/2 variants from ClinVar
- `brca_clinvar_highconf.vcf.gz` → High-confidence subset (multiple submitters, no conflicts)
- `brca_vep_output.txt` → Annotated variants using Ensembl VEP

### To run:
```bash
bash setup_vep_input.sh
```

**Requirements**:
- `bcftools`
- `vep` with offline cache
