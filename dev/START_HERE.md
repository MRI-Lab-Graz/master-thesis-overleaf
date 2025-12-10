START HERE — Quick start for Word users (one page)

1) Open Overleaf: https://www.overleaf.com and create a new project.

2) Upload this repository (all files and folders) or the prepared `overleaf.zip`. Keep the folder structure.

3) Open **one** file: `thesis_eng.tex` (English) **or** `thesis_ger.tex` (German).

4) Replace the title-page placeholders at the top of that file:
   - `\thesisauthor` with your full name
   - `\thesistitle` with your thesis title
   - `\thesissubtitle` (optional)
   - `\thesisadvisor` with your advisor's name
   - `\thesisdate` with your submission date

5) Write content: find the sections (Introduction, Methods, Results, Discussion) and replace the example text. Use `\section{}` and `\subsection{}`.

6) Add figures: upload images into `figures/` and reference them with `\includegraphics{figures/yourfile.pdf}`.

7) Add references:
   - Edit `bibliography.bib` (or upload your own `.bib`).
   - Cite with `\cite{key}` (the key is the entry name in the `.bib` file).

8) Compile: Click Recompile in Overleaf. If references don't show, set **Menu → Settings → Compiler** to "LaTeX (pdfLaTeX) + Biber" and recompile twice.

9) Troubleshooting quick checks:
   - Missing image -> check path `figures/yourfile.ext` and upload the file.
   - Strange characters (äöü) -> ensure file encoding is UTF-8 (Overleaf default).
   - Citations not appearing -> set compiler to "LaTeX (pdfLaTeX) + Biber" and recompile twice.
   - `microtype: Unable to apply patch 'footnote'` -> harmless; you can ignore it.

10) Ask for help: show the PDF and the Overleaf error log to your supervisor or contact the template maintainer.

---

Quick checklist for absolute beginners (do these five things first):

1. Open `thesis_eng.tex` or `thesis_ger.tex` and edit the 5 title fields (name, title, subtitle, advisor, date).
2. Click Recompile — check the PDF opens and the title page updates.
3. Replace one paragraph in the Introduction with your words; recompile to confirm.
4. Upload one image to `figures/` and add the example figure; recompile to confirm it appears.
5. Add one reference to `bibliography.bib`, cite it in the intro with `\cite{...}` and set compiler to "LaTeX (pdfLaTeX) + Biber" if the citation doesn't show.

That's it — progress in small, verifiable steps. If an error appears, copy the Overleaf log and search for the top error line; it usually indicates what's wrong.

---

Note for advanced warnings:

- You might see a warning from the `microtype` package that mentions `Unable to apply patch 'footnote'`. This is harmless and can be ignored. If it bothers you, comment out `\usepackage{microtype}` in `template/apa_template_settings.tex`.