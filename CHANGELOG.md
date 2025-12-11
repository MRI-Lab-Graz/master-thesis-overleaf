# Changelog

All notable changes to this repository will be documented in this file.

## v1.0.0 - 2025-12-11

- Add full bilingual template support:
  - `thesis_ger.tex` / `thesis_eng.tex` — standalone beginner-friendly thesis files (German & English).
  - `bachelor_ger.tex` / `bachelor_eng.tex` — separate bachelor templates for German and English students.
- Improve language handling and caption localization:
  - Centralized language handling in `template/preamble.tex` with `\thesislanguage` macro.
  - Ensure German captions use localized names (`Tabelle`, `Abbildung`) and English captions remain `Table`, `Figure`.
- Fixes and polish:
  - Replaced any hardcoded float captions so LaTeX generates localized labels correctly.
  - Updated documentation and examples in `dev/` to reflect template changes.

### Notes for the release

- Recommended version tag: `v1.0.0`.
- Recommended release body (copy-paste):

> Release v1.0.0 — Bilingual LaTeX thesis templates
>
> This release adds beginner-friendly LaTeX thesis templates with full language support for German and English, plus dedicated bachelor templates. Language handling has been centralized and caption localization fixed so float labels are correct for both languages. See the repository README for usage instructions. PDF artifacts and an Overleaf-ready zip can be produced using the included scripts.

---

(You can edit or expand these notes before creating the release on GitHub.)
