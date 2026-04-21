#!/usr/bin/env bash
# Create the student ZIP containing only the files students need.
set -euo pipefail

ROOT_DIR=$(cd "$(dirname "$0")/.." && pwd)
OUT="$ROOT_DIR/thesis_template.zip"

# Explicit allowlist prevents accidental leakage from local stray files.
PUBLIC_FILES=(
  "thesis_eng.tex"
  "thesis_ger.tex"
  "bibliography.bib"
  "README.md"
  "LICENSE"
  "template/preamble.tex"
  "template/titlepage_eng.tex"
  "template/titlepage_ger.tex"
  "figures/uni-graz-logo.pdf"
)

for file in "${PUBLIC_FILES[@]}"; do
  if [[ ! -f "$ROOT_DIR/$file" ]]; then
    echo "Missing required file: $file" >&2
    exit 1
  fi
done

STAGE_DIR=$(mktemp -d "${TMPDIR:-/tmp}/thesis-template-zip.XXXXXX")
cleanup() {
  rm -rf "$STAGE_DIR"
}
trap cleanup EXIT

for file in "${PUBLIC_FILES[@]}"; do
  mkdir -p "$STAGE_DIR/$(dirname "$file")"
  cp "$ROOT_DIR/$file" "$STAGE_DIR/$file"
done

rm -f "$OUT"
(
  cd "$STAGE_DIR"
  LC_ALL=C zip -r "$OUT" "${PUBLIC_FILES[@]}" >/dev/null
)

echo "Created $OUT"
