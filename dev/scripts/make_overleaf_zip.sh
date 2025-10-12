#!/usr/bin/env bash
# Create an Overleaf-ready zip containing only the files students need
set -euo pipefail
ROOT_DIR=$(cd "$(dirname "$0")/../.." && pwd)  # Go to repo root
OUT="$ROOT_DIR/overleaf.zip"
cd "$ROOT_DIR"
rm -f "$OUT"
zip -r "$OUT" thesis.tex template figures bibliography.bib README.md START_HERE.md .gitignore || true
echo "Created $OUT"