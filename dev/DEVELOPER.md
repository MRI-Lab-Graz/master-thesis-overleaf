Developer testing checklist — Reproducible Overleaf package

Purpose
-------
This document describes quick steps for the developer/maintainer to validate the template and produce an Overleaf-ready ZIP that you can upload to Overleaf for final verification.

Prerequisites
-------------
- A Unix-like shell (macOS Terminal / Linux)
- TeX Live or MacTeX (for local build testing)
- `latexmk`, `biber`, `zip` utilities installed

Local quick test
----------------
1. Build locally:

```bash
make build-all
```

2. Inspect `thesis_eng.pdf` and `thesis_ger.pdf` in the repository root.

3. Produce Overleaf ZIP:

```bash
make zip
# creates overleaf.zip
```

4. Upload `overleaf.zip` to Overleaf (Upload Project) to confirm the package compiles in Overleaf as-is.

CI/Repository
-------------
- The GitHub Actions workflow compiles both public thesis entry points: `thesis_eng.tex` and `thesis_ger.tex`.
- Push and pull request runs upload both generated PDFs and `overleaf.zip` as workflow artifacts.
- Published GitHub Releases receive `overleaf.zip`, `thesis_eng.pdf`, and `thesis_ger.pdf` as release assets.
- The release-assets workflow also supports manual runs for an existing tag when you need to backfill or replace release assets.

Troubleshooting
---------------
- If CI fails, open the Actions run and inspect the log files from the LaTeX build step.
- Fix issues locally with `make build-all` and repeat until both PDFs compile cleanly.

Notes
-----
Keep the Overleaf ZIP minimal: only include the public student sources (`thesis_eng.tex`, `thesis_ger.tex`, `template/`, `figures/`, `bibliography.bib`, `README.md`, `LICENSE`) so students get a clean starting project.
