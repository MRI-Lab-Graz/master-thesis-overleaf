**LaTeX for Psychology Students — Focused Cheatsheet**

This guide is tailored for psychology students writing a thesis in the provided template (e.g., `thesis_eng.tex`). Most students will not need to change the document class or heavy preamble settings — focus on structure, figures, tables, and citations.

**Quick Structure (what you will use most)**
- **Typical thesis sections (suggested):** Title page (handled by template), Abstract, Introduction, Methods, Results, Discussion, References, Appendices.
- **Create sections/headings:** `\section{Methods}`, `\subsection{Participants}`, `\subsubsection{Recruitment}`. Use `\section*{Acknowledgements}` for unnumbered sections.
- **Table of contents:** `\tableofcontents` (template may already include it).

**Figures (most important for Results/Methods)**
- Keep original files in `figures/` and use descriptive names: `figures/rt_histogram.png`, `figures/brain_activation.pdf`.
- Preferred formats: vector graphics (PDF, SVG converted to PDF, EPS) for plots; PNG/JPG for photos. Use at least 300 dpi for raster images intended for print.
- Basic figure example:
```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.75\textwidth]{figures/rt_histogram.png}
  \caption{Reaction time distribution across conditions.}
  \label{fig:rt}
\end{figure}
```
- Tips:
  - Use `\label{}` immediately after `\caption{}` so `\ref{}` points correctly.
  - Use `width=...\textwidth` to scale consistently.
  - `subcaption` (with `\usepackage{subcaption}`) allows side-by-side subfigures with separate subcaptions.

**Tables (for descriptive stats and results)**
- Use `booktabs` (`\usepackage{booktabs}`) for clean horizontal rules.
- APA style often places the table caption above the table — check your department template/rules.
- Simple table example:
```latex
\begin{table}[htbp]
  \centering
  \begin{tabular}{lcc}
    	oprule
    Group & Mean & SD \\
    \midrule
    Control & 12.3 & 3.4 \\
    Treatment & 14.7 & 2.9 \\
    \bottomrule
  \end{tabular}
  \caption{Descriptive statistics for the main dependent variable.}
  \label{tab:desc}
\end{table}
```
- For wide tables use `tabularx` or `adjustbox` to fit page width; for very long tables use `longtable`.

**Citations — three common workflows**
1) BibTeX + natbib (author-year, common and simple)
  - In preamble: `\usepackage{natbib}`
  - In text: `\citet{smith2020}` → "Smith (2020)"; `\citep{smith2020}` → "(Smith, 2020)".
  - Include bibliography at end:
    ```latex
    \bibliographystyle{apa} % or plainnat, apalike
    \bibliography{bibliography}
    ```
  - Overleaf runs BibTeX automatically when you compile.

2) biblatex + Biber (modern, flexible)
  - In preamble: `\usepackage[style=apa,backend=biber]{biblatex}` and `\addbibresource{bibliography.bib}`
  - In text: `\textcite{smith2020}` (Smith, 2020) or `\parencite{smith2020}` (Smith, 2020).
  - At end: `\printbibliography{}`
  - On Overleaf select the right compiler/backend if needed; Biber is commonly used and Overleaf usually handles it automatically.

3) APA-specific packages/classes
  - If your department requires APA formatting, consider `apa6`/`apa7` class or `apacite` package. Many thesis templates already include APA-compatible styles.

Citation tips:
- Upload `bibliography.bib` to your Overleaf project (or export from Zotero/EndNote as `.bib`).
- For multiple citations: `\citep{smith2020,doe2019}` → "(Smith, 2020; Doe, 2019)".
- Add page numbers: `\citep[p.23]{smith2020}`.
- If citations look wrong, check the bibliography style (BibTeX) or `biblatex` options and recompile (sometimes LaTeX→BibTeX/Biber→LaTeX→LaTeX).

**Practical Overleaf tips for students**
- Upload your `bibliography.bib` and figures into the project root or `figures/` folder.
- Compiler: keep `pdfLaTeX` unless your template requires `XeLaTeX`/`LuaLaTeX` (Unicode/system fonts).
- For `biblatex` use the `biber` backend; Overleaf normally detects and runs it but check the menu if citations fail.
- Use the Overleaf citation panel (left sidebar) to insert citations quickly.

**Common small pitfalls**
- Special characters: escape `# % & _ { } $ ^ ~` (e.g., `\%`).
- Missing file error: upload the file referenced by `\includegraphics{}` or `\bibliography{}`.
- Undefined reference: compile twice (LaTeX → BibTeX/Biber → LaTeX → LaTeX) to resolve labels and citation keys.

**Next steps I can do for you**
- Customize examples to match `thesis_eng.tex` formatting (captions above/below, caption style).
- Add a small sample figure and table to the `figures/` folder and commit a compiled PDF example.
- Produce a one-page printable cheat-sheet PDF for handouts.

If you want one of these, tell me which and I will proceed.

