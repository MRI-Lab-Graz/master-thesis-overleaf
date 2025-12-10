# APA7 Thesis Template (Overleaf)

This is the simplest possible way to write your thesis in Overleaf using APA7. Edit one file, press Recompile, done.

## 60-second setup
- Download `overleaf.zip` from GitHub Releases (or zip this repo).
- In Overleaf: New Project → Upload Project → select the zip.
- Open exactly one file: `thesis_eng.tex` (English) **or** `thesis_ger.tex` (German).
- Change the fields marked `% (CHANGE ME)` at the top (name, title, supervisor, date).
- Click **Recompile**. That’s your PDF.

## Everyday actions
- Write: Replace the example sections with your text.
- Cite: Add entries to `bibliography.bib`, cite with `\cite{Key}`. Recompile twice.
- Figures: Upload images to `figures/` and use `\includegraphics{figures/your-file.ext}`.
- Share: Overleaf Menu → Share → send link to supervisor.

## Quick fixes (common issues)
- Citations missing? Recompile twice; set compiler to "LaTeX (pdfLaTeX) + Biber" if needed.
- Image missing? File must be in `figures/`, name and case must match.
- See `microtype: Unable to apply patch 'footnote'`? Ignore — harmless warning.
- Errors (red) show the line number in the log; warnings (yellow) are usually cosmetic.

## What to edit vs. ignore
- Edit: `thesis_eng.tex` or `thesis_ger.tex`, plus `bibliography.bib`, and your files in `figures/`.
- Ignore: `template/`, `maintainer/`, `Makefile`, and any `.aux/.log/.toc` build artifacts.

## Slightly more detail (when you have 5 minutes)
1) **Metadata first:** Fill all `% (CHANGE ME)` fields before writing chapters.
2) **Structure:** Use `\section{...}` and `\subsection{...}`; the provided chapters are just examples.
3) **Language:** Pick only one main file; don’t rename it.
4) **Recompile rhythm:** After edits to text/figures: once. After citation changes: twice.
5) **Backups/ZIPs:** If you re-zip for Overleaf, keep the folder structure untouched.

## Advanced (optional, local build)
Requires TeX Live/MacTeX + `make`:
- `make build-en` — build English PDF
- `make build-de` — build German PDF
- `make clean` — remove aux files

## Contact
Maintainer: karl.koschutnig@uni-graz.at
