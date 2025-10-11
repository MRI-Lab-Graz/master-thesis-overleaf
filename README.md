# OverLeaf Masterthesis Template

> 🚀 New to LaTeX / Word user? Start here: [START_HERE.md](START_HERE.md) — a one-page quickstart that walks you through the five first steps.

This repository provides a beginner-friendly LaTeX template for students to create APA-style theses using Overleaf. The template includes all necessary settings and structures to help you get started with academic writing in APA format.

## Features

- Pre-configured for APA style.
- Clear and modular structure for adding your content.
- Example content provided to guide you.

## Getting Started

### 1. Clone or Download the Repository

- Option 1: **Clone the repository**
  
  ```bash
  git clone https://github.com/MRI-Lab-Graz/master-thesis-latex.git
  ```

- Option 2: **Download as ZIP**
  - Click the green "Code" button at the top of the repository page.
  - Select "Download ZIP" and extract the files.

### 2. Open the Template in Overleaf

1. Go to [Overleaf](https://www.overleaf.com).
2. Create a new project by selecting **Upload Project**.
3. Upload all the files from this repository to your project.

Tip: New users should open `START_HERE.md` first — a one-page quickstart with five simple steps.

### 3. Start Writing Your Thesis

- Open `thesis.tex` and replace the example content with your own.

## File Structure

- **`apa_template_settings.tex`**: Contains all formatting and style settings for APA compliance.
- **`thesis.tex`**: The main file where you write your thesis content.
- **BibTeX File (Optional)**: You can add a `.bib` file for managing references.

## How to Compile

1. In Overleaf, set the compiler to **PDFLaTeX** (or XeLaTeX for better Unicode support).
2. Click **Recompile** to generate the PDF. For references, ensure Biber is run if needed.

For supervisors: ask students to share the Overleaf project link (Menu -> Share) so you can review their draft without exchanging files.

## Example Usage

Here’s a quick example of how to add content:

```latex
\section{Introduction}
This is where you write your introduction. Make sure to use APA citations, like \cite{Fink2021}.

\subsection{Background}
Provide necessary background information here.
```

## Customization Tips

- **Fonts and Spacing:** Adjust in `template/apa_template_settings.tex`.
- **Adding Figures/Tables:** Use `\begin{figure}` or `\begin{table}` as shown in the template. Captions should be in English for APA, but text can be German.
- **Sections:** Add new sections with `\section{Your Title}`. Use subsections with `\subsection{}`.
- **For Overleaf:** Upload all files, including subfolders like `figures/` and `template/`. Use version history to track changes and collaborate with advisors.

## Common Mistakes to Avoid

- **Forgetting to Update Bibliography:** Always add entries to `bibliography.bib` and cite with `\cite{key}`. Run Biber after changes.
- **File Paths:** Ensure images are in `figures/` and referenced correctly.
- **Special Characters:** Use UTF-8; babel is set to ngerman for German text.
- **Compilation Order:** Compile main file first, then run Biber for references, then compile again.

## Adding References

1. Update `bibliography.bib` with your references in BibTeX format. The template already includes some examples.
2. Cite them in your text using `\cite{key}`.
3. The bibliography will be automatically generated at the end.

Example BibTeX entry:
```bibtex
@article{example2025,
  author  = {John Doe},
  title   = {An Example Article},
  journal = {Journal of Examples},
  year    = {2025},
  volume  = {42},
  pages   = {1--10}
}
```

## Troubleshooting

- **Compilation Errors:** Ensure all files are uploaded to Overleaf. Check for missing packages (Overleaf usually has them).
- **References Not Showing:** Run Biber (set compiler to PDFLaTeX + Biber) or XeLaTeX. Clear auxiliary files if needed.
- **APA Style Issues:** The template uses APA7, which is up-to-date for the 7th edition.
- **Common LaTeX Errors:** 
  - Undefined control sequence: Check for typos in commands.
  - File not found: Ensure file paths are correct (e.g., figures/uni-graz-logo.pdf).
  - Encoding issues: Use UTF-8 encoding for special characters.
- If stuck, consult Overleaf's help or contact the maintainer.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve this template.

## Contact

If you have any problems, try to solve them yourself ;-) Or get in contact <karl.koschutnig@uni-graz.at>

## License

This project is licensed under the [MIT License](LICENSE).
