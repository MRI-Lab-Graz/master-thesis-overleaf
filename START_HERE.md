START HERE — Quick start for Word users (one page)

1) Open Overleaf: https://www.overleaf.com and create a new project.

2) Upload this repository (all files and folders). Keep the folder structure.

3) Open `thesis.tex`.

4) Replace the title-page placeholders at the top of `thesis.tex`:
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

8) Compile: Click Recompile in Overleaf. If references don't show, set project to use Biber (Menu -> Settings -> Compiler: "LaTeX (pdfLaTeX) + Biber").

9) Troubleshooting quick checks:
   - Missing image -> check path `figures/yourfile.ext` and upload the file.
   - Strange characters (äöü) -> ensure file encoding is UTF-8 (Overleaf default).
   - Citations not appearing -> run Biber and recompile twice.

10) Ask for help: show the PDF and the Overleaf error log to your supervisor or contact the template maintainer.

---

Quick checklist for absolute beginners (do these five things first):

1. Open `thesis.tex` and edit the 5 title fields (name, title, subtitle, advisor, date).
2. Click Recompile — check the PDF opens and the title page updates.
3. Replace one paragraph in the Introduction with your words; recompile to confirm.
4. Upload one image to `figures/` and add the example figure; recompile to confirm it appears.
5. Add one reference to `bibliography.bib`, cite it in the intro with `\cite{...}` and set Biber if the citation doesn't show.

That's it — progress in small, verifiable steps. If an error appears, copy the Overleaf log and search for the top error line; it usually indicates what's wrong.