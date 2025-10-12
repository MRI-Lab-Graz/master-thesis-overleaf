# Overleaf-first APA7 Master Thesis Template

This repository is designed for Overleaf users (students and supervisors). It provides a small, easy entry point and a single shared source file so students can edit without getting lost in build details.

If you prefer local builds, a Makefile is present for convenience, but Overleaf is the recommended workflow for students.

## Quickstart (Overleaf)

1. Open https://www.overleaf.com and create a new project → Upload Project.
2. Upload the repository contents (or the ZIP) to Overleaf.
3. Open one of the root files (recommended):

- `thesis_eng.tex` — English standalone project file (beginner-friendly)
- `thesis_ger.tex` — German standalone project file (beginner-friendly)

4. Edit the metadata at the top of the chosen root file (fields marked "CHANGE ME") and then write your chapters below. Beginners: keep edits to the root file only.
5. Click Recompile. Overleaf will run the required Biber/LaTeX steps automatically.

## File layout (what students need)

- `thesis_eng.tex` — English standalone thesis file for beginners (edit this directly)
- `thesis_ger.tex` — German standalone thesis file for beginners (edit this directly)
- `maintainer/template/thesis_common.tex` — (optional) shared source kept for maintainers
- `maintainer/template/apa_template_settings.tex` — formatting and APA7 settings (only change if you know LaTeX)
- `bibliography.bib` — your references
- `figures/` — images used in the thesis

For beginners: edit the root standalone file you opened (`thesis_eng.tex` or `thesis_ger.tex`). Advanced users/maintainers can edit files under `maintainer/template/`.

Start here: `START_HERE.md` — a very short 5-step guide for Overleaf beginners.

## Compiling on Overleaf

- Set the compiler to PDFLaTeX (Overleaf defaults are fine).
- Overleaf runs Biber automatically when needed; click Recompile after edits.

## Local builds (optional)

If you want to compile locally (for maintainers or advanced users), install a TeX distribution and run the Makefile. This is optional and not required for students.

Build locally (English):

```bash
make build-en
```

Build locally (German):

```bash
make build-de
```

Clean auxiliary files:

```bash
make clean
```

## Notes for supervisors

- Ask students to share their Overleaf project link (Menu → Share) so you can review drafts.
- Keep template changes to `template/` only. Students should not edit `apa_template_settings.tex` unless necessary.

## Troubleshooting (short)

- If references don't appear, check `bibliography.bib` and re-run compilation on Overleaf.
- If an image is missing, ensure it's in `figures/` and referenced using that path.
- Cosmetic warnings (microtype or underfull vboxes) are not blocking.

## Contact

If you need help, contact the maintainer: karl.koschutnig@uni-graz.at

---

This README now focuses on Overleaf usage and keeps local-build instructions for advanced users/maintainers.
