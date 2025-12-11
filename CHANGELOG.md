# Changelog

All notable changes to this repository will be documented in this file.

## v1.2.0 - 2025-12-11

- Add full bilingual template support:
  - `thesis_ger.tex` / `thesis_eng.tex` — standalone beginner-friendly thesis files (German & English).
  - `bachelor_ger.tex` / `bachelor_eng.tex` — separate bachelor templates for German and English students.
- Improve language handling and caption localization:
  - Centralized language handling in `template/preamble.tex` with `\thesislanguage` macro.
  - Ensure German captions use localized names (`Tabelle`, `Abbildung`) and English captions remain `Table`, `Figure`.
- Fixes and polish:
  - Replaced any hardcoded float captions so LaTeX generates localized labels correctly.
  - Updated documentation and examples in `dev/` to reflect template changes.
