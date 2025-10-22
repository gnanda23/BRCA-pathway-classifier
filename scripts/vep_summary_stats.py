#!/usr/bin/env python3

import pandas as pd
import sys

# Input file
if len(sys.argv) < 2:
    print("Usage: python3 vep_summary_stats.py <filtered_vep_file.tsv>")
    sys.exit(1)

input_path = sys.argv[1]
df = pd.read_csv(input_path, sep='\t')

# Columns to summarize
summary_cols = ['Gene', 'Feature', 'Consequence', 'SIFT', 'PolyPhen']

# Count non-null entries for each column
summary = {}
for col in summary_cols:
    if col in df.columns:
        summary[col] = df[col].value_counts().to_frame().reset_index()
        summary[col].columns = [col, 'count']

# Save to .csv, .md, .html
base = input_path.replace(".tsv", "")
csv_path = f"{base}_summary.csv"
md_path = f"results/brca_summary_statistics.md"
html_path = f"{base}_summary.html"

# Combine all summaries into one DataFrame
combined = pd.DataFrame()
for col, df_sum in summary.items():
    df_sum.insert(0, 'feature', col)
    combined = pd.concat([combined, df_sum], ignore_index=True)

# Write outputs
combined.to_csv(csv_path, index=False)

# Markdown
with open(md_path, "w") as f_md:
    f_md.write("# BRCA VEP Summary Statistics\n\n")
    for col, df_sum in summary.items():
        f_md.write(f"## {col}\n\n")
        f_md.write(df_sum.to_markdown(index=False))
        f_md.write("\n\n")

# HTML
combined.to_html(html_path, index=False)

print(f"✅ Summary files written:\n• {csv_path}\n• {md_path}\n• {html_path}")