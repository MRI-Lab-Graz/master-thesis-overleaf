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
make build
```

2. Inspect `thesis.pdf` in the repository root.

3. Produce Overleaf ZIP:

```bash
make zip
# creates overleaf.zip
```

4. Upload `overleaf.zip` to Overleaf (Upload Project) to confirm the package compiles in Overleaf as-is.

CI/Repository
-------------
- The GitHub Actions workflow already compiles `thesis.tex` and uploads `thesis.pdf` as an artifact.
- The workflow now also uploads `overleaf.zip` so you can download the exact package produced by the repository.

Troubleshooting
---------------
- If CI fails, open the Actions run and inspect the log files (the latex-action step prints a full LaTeX log).
- Fix issues locally with `make build` and repeat until the PDF compiles cleanly.

Notes
-----
Keep the Overleaf ZIP minimal: only include source files (`thesis.tex`, `template/`, `figures/`, `bibliography.bib`, `START_HERE.md`) so students get a clean starting project.
