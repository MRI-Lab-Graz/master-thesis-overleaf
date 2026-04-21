#!/usr/bin/env bash
# Verify overleaf.zip contains exactly the public student files.
set -euo pipefail

ROOT_DIR=$(cd "$(dirname "$0")/.." && pwd)
ZIP_PATH="${1:-$ROOT_DIR/overleaf.zip}"

if [[ ! -f "$ZIP_PATH" ]]; then
  echo "ZIP file not found: $ZIP_PATH" >&2
  exit 1
fi

EXPECTED_FILES=(
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

TMP_EXPECTED=$(mktemp)
TMP_ACTUAL=$(mktemp)
cleanup() {
  rm -f "$TMP_EXPECTED" "$TMP_ACTUAL"
}
trap cleanup EXIT

printf '%s\n' "${EXPECTED_FILES[@]}" | LC_ALL=C sort >"$TMP_EXPECTED"
unzip -Z -1 "$ZIP_PATH" | sed '/\/$/d' | LC_ALL=C sort >"$TMP_ACTUAL"

if ! diff -u "$TMP_EXPECTED" "$TMP_ACTUAL"; then
  echo "ZIP content mismatch in $ZIP_PATH" >&2
  exit 1
fi

if unzip -Z -1 "$ZIP_PATH" | grep -E '^/|\.\.|^-|^[A-Za-z]:[/\\]' >/dev/null; then
  echo "ZIP contains unsafe path entries: $ZIP_PATH" >&2
  exit 1
fi

echo "ZIP verification passed: $ZIP_PATH"