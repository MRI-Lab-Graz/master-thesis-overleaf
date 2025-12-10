# APA7 Master Thesis Template for Overleaf

**For absolute beginners:** This template makes it easy to write your thesis in LaTeX using Overleaf. Everything you need is in one file — no complicated setup required.

**📖 New to LaTeX? Start here:** Read `START_HERE.md` for a complete 5-step beginner's guide.

---

## Quick Start (3 Steps)

### Step 1: Upload to Overleaf
1. Go to https://www.overleaf.com
2. Create a new project → **Upload Project**
3. Easiest: upload the prepared `overleaf.zip` (from GitHub Releases) — or zip this repository yourself and upload it.

### Step 2: Choose Your Language
Open **ONE** of these files:
- **`thesis_eng.tex`** — Complete standalone English thesis template
- **`thesis_ger.tex`** — Complete standalone German thesis template

### Step 3: Edit and Compile
1. Edit the metadata at the top (fields marked `% CHANGE ME`)
2. Replace the example text with your content
3. Click **Recompile** to generate your PDF

**That's it!** Everything you need (preamble, formatting, example content) is in that one file.

---

## What Files Do I Need to Know About?

### For Students (Beginners):
- **`thesis_eng.tex`** or **`thesis_ger.tex`** — Your main file (edit this)
- **`bibliography.bib`** — Your references (add citations here)
- **`figures/`** — Put your images here
- **`START_HERE.md`** — Step-by-step beginner guide (read this first!)

### What to Ignore:
- `maintainer/` folder — only for template maintainers
- `template/` folder — only for template maintainers  
- `Makefile` — only for local builds (not needed on Overleaf)
- Other `.tex`, `.aux`, `.log` files — build artifacts

**Beginners:** Only edit your chosen file (`thesis_eng.tex` or `thesis_ger.tex`) and `bibliography.bib`. Don't touch the package settings in the preamble unless you know LaTeX!

### Top 5 quick gotchas (read this!)
- Recompile twice after adding citations; ensure compiler is "LaTeX (pdfLaTeX) + Biber" if citations stay missing.
- Image paths are case-sensitive; files must live in `figures/`.
- Change every field marked `% (CHANGE ME)` at the top of your thesis file before sharing.
- `microtype` warning about `footnote` is harmless; errors (red) are the ones to fix.
- Keep all files/folders when zipping for Overleaf; do not rename the `.tex` file you are using.

---

## Using Overleaf

### Compiling:
- Click the green **Recompile** button after making changes
- Overleaf automatically runs PDFLaTeX + Biber (for references)
- If references don't appear, click Recompile again (it needs two passes)
- If citations still do not appear, set **Menu → Settings → Compiler** to "LaTeX (pdfLaTeX) + Biber" and Recompile twice.

### Adding References:
1. Open `bibliography.bib`
2. Add your BibTeX entries (export from Zotero, Mendeley, Google Scholar, etc.)
3. Cite in your text with `\cite{AuthorYear}`
4. Recompile to see them in the PDF

### Adding Figures:
1. Upload images to the `figures/` folder
2. Reference them: `\includegraphics{figures/your-image.png}`
3. Recompile to see them in the PDF

### Sharing with Your Supervisor:
- Click **Menu** → **Share** → Send the link to your supervisor
- They can view and comment on your work

---

## Troubleshooting

### Common Issues:

**References not showing?**
- Click Recompile twice (Biber needs two passes)
- Check that your `.bib` file has the correct citation key
- Make sure you used `\cite{key}` in your text
- Verify compiler is set to "LaTeX (pdfLaTeX) + Biber" in Overleaf settings.

**Image not appearing?**
- Check the image is in `figures/` folder
- Check the filename matches exactly (case-sensitive)
- Check the file format (PDF, PNG, JPG are supported)

**Harmless warning about `microtype`?**
- Overleaf may show `microtype: Unable to apply patch 'footnote'` — this is safe to ignore. Your PDF still compiles.

**Compilation error?**
- Look at the error log (click the error icon)
- Usually shows which line has the problem
- Common issue: missing `\` before LaTeX commands

**Seeing warnings (yellow)?**
- Warnings about `microtype`, `underfull hbox`, `overfull hbox` are cosmetic
- They don't stop compilation — you can ignore them
- Only fix if they cause visible problems in your PDF

---

## Local Builds (Optional — Advanced Users Only)

**Students using Overleaf can skip this section entirely.**

If you're a maintainer or advanced user who wants to compile locally:

### Requirements:
- Full TeX distribution (TeX Live, MiKTeX, or MacTeX)
- Make utility

### Commands:

Build English version:
```bash
make build-en
```

Build German version:
```bash
make build-de
```

Clean auxiliary files:
```bash
make clean
```

---

## For Supervisors

- **Reviewing student work:** Ask students to share their Overleaf project (Menu → Share)
- **Template updates:** Keep changes in `maintainer/template/` — students use the standalone files
- **Student questions:** Point them to `START_HERE.md` first

---

## Template Features

✅ **APA7 formatting** — Follows APA 7th edition style  
✅ **Automatic references** — BibTeX + Biber with APA style  
✅ **English & German** — Full language support  
✅ **Beginner-friendly** — Everything in one file, clear instructions  
✅ **Overleaf-ready** — Upload and start writing immediately  

---

## Need Help?

1. **First:** Read `START_HERE.md` — complete beginner guide
2. **Second:** Check the Troubleshooting section above
3. **Still stuck?** Contact the maintainer: **karl.koschutnig@uni-graz.at**

---

## License & Credits

This template is maintained for students at the University of Graz.  
Based on the APA7 LaTeX class.
