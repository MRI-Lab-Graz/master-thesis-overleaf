#!/usr/bin/env bash
# Create an Overleaf-ready zip containing only the files students need
set -euo pipefail
ROOT_DIR=$(cd "$(dirname "$0")/.." && pwd)
OUT="$ROOT_DIR/overleaf.zip"
cd "$ROOT_DIR"
rm -f "$OUT"
zip -r "$OUT" thesis_eng.tex thesis_ger.tex template figures bibliography.bib README.md LICENSE \
  -x "*.aux" "*.log" "*.toc" "*.out" "*.bbl" "*.blg" "*.bcf" "*.run.xml" "*.fdb_latexmk" "*.synctex.gz" "figures/sampleFig.png" "figures/start_here.svg" "template/apa_template_settings.tex" || true
echo "Created $OUT"
