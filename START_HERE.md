# START HERE — Quick Guide for Beginners (5 Steps)

**Welcome!** This guide will help you write your thesis in Overleaf, even if you've never used LaTeX before. Follow these 5 simple steps:

---

## Step 1: Upload to Overleaf

1. Go to https://www.overleaf.com and log in (or create a free account)
2. Click **New Project** → **Upload Project**
3. Upload this repository as a ZIP file (download it from GitHub first if needed)
4. Keep all files and folders together — don't change the structure

---

## Step 2: Choose Your Language

Open **ONE** of these files in Overleaf (this is your main file — everything is in it):

- **`thesis_eng.tex`** — for writing in English (recommended)
- **`thesis_ger.tex`** — for writing in German

**Important:** You only work in ONE file. Pick the language you need and ignore the other file.

---

## Step 3: Add Your Personal Information

At the very top of your chosen file (`thesis_eng.tex` or `thesis_ger.tex`), you'll see lines marked with `% (CHANGE ME)`:

```latex
\newcommand{\thesisauthor}{Susi Sorglos}  % Your full name (CHANGE ME)
\newcommand{\thesistitle}{...} % (CHANGE ME)
\newcommand{\thesissubtitle}{...} % optional (CHANGE ME)
\newcommand{\thesisadvisor}{Prof. Dr. Harry Hirsch} % (CHANGE ME)
\newcommand{\thesisinstitute}{Institute of Psychology} % (CHANGE ME)
\newcommand{\thesisdate}{21 March 1917} % (CHANGE ME)
```

**Replace these with YOUR details:**
- Your name
- Your thesis title
- Your subtitle (optional, can leave empty)
- Your supervisor's name
- Your institute name
- Today's date

Then click **Recompile** (green button) and check that the title page shows your information.

---

## Step 4: Write Your Content

Scroll down in the same file to find the example chapters:

- Introduction
- Literature Review
- Methods
- Results
- Discussion

**Replace the example text** with your own writing. Keep the structure like this:

```latex
\section{Introduction}
Write your introduction here...

\section{Methods}
Write your methods here...
```

After each change, click **Recompile** to see your PDF update.

---

## Step 5: Add References and Figures

### Adding References:

1. Open the file `bibliography.bib` in Overleaf
2. Add your references there (you can export from Zotero, Mendeley, or Google Scholar)
3. In your text, cite with `\cite{AuthorYear}` — for example: `\cite{Fink2021}`
4. Recompile — your references will appear automatically

### Adding Figures:

1. Upload your image to the `figures/` folder in Overleaf
2. Add it in your text like this:

```latex
\begin{figure}[h]
\centering
\includegraphics[width=0.8\textwidth]{figures/your-image.png}
\caption{Description of your figure}
\label{fig:myimage}
\end{figure}
```

3. Recompile to see it in the PDF

---

## Quick Troubleshooting

- **References not showing?** Click Recompile twice (Overleaf needs two passes)
- **Image not appearing?** Check that the file is in `figures/` folder and the filename is correct
- **Strange error?** Look at the error log (click on the error icon) — usually it tells you which line has a problem
- **Need help?** Share your Overleaf project with your supervisor: **Menu** → **Share**

---

## Important Tips for Beginners

✅ **Do:**
- Edit only the ONE file you opened (`thesis_eng.tex` or `thesis_ger.tex`)
- Save often (Overleaf auto-saves, but check the green "All changes saved" message)
- Recompile after every change to catch errors early
- Make small changes and test them

❌ **Don't:**
- Don't edit the "package settings" section (the top part before `\begin{document}`)
- Don't delete files from `figures/` or other folders
- Don't panic if you see warnings (yellow) — only red errors stop compilation

---

## Need More Help?

Contact the template maintainer: **karl.koschutnig@uni-graz.at**

**That's it! You're ready to write your thesis. Good luck! 🎓**