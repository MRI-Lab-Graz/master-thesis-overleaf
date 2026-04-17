# Changelog

All notable changes to this repository will be documented in this file.

## v1.2.3 - 2026-04-17

- Release automation:
  - Added a release workflow that attaches `overleaf.zip`, `thesis_eng.pdf`, and `thesis_ger.pdf` to published GitHub Releases.
  - Kept push/pull-request workflow artifacts for CI debugging and verification.
  - Added manual tag-based reruns for repairing assets on an existing release.
  - Updated documentation to distinguish release assets from workflow artifacts.
  - Removed a stale duplicate developer ZIP script and fixed public README linking.

## v1.2.2 - 2026-04-17

- Final public cleanup:
  - Rewrote the README around the actual student workflow and maintainer workflow.
  - Removed dead legacy template files that were no longer referenced anywhere.

## v1.2.1 - 2026-04-17

- Public release readiness improvements:
  - Added a repository license.
  - Activated and updated GitHub Actions to build `thesis_eng.tex` and `thesis_ger.tex`.
  - Made the local `Makefile` portable by relying on TeX tools from `PATH`.
  - Cleaned up student and maintainer documentation to remove stale `thesis.tex` references.
  - Reduced the Overleaf ZIP to the public thesis entry points and required assets only.

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
