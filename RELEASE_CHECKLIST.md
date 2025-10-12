# Release Checklist for v1.0.0

## Pre-Release Tasks

### 1. Test on Overleaf
- [ ] Upload the entire repository to Overleaf
- [ ] Test `thesis_eng.tex` - compile successfully
- [ ] Test `thesis_ger.tex` - compile successfully
- [ ] Verify title page displays correctly (all metadata fields)
- [ ] Verify table of contents generates
- [ ] Verify bibliography/references appear
- [ ] Check that figures load correctly

### 2. Documentation Review
- [ ] README.md is clear and accurate
- [ ] START_HERE.md provides step-by-step beginner guide
- [ ] All file references are correct (no typos like `thesis_enl.tex`)
- [ ] Contact information is current

### 3. Code Quality
- [ ] No LaTeX compilation errors in either file
- [ ] All backslashes present in LaTeX commands
- [ ] Example content compiles cleanly
- [ ] Bibliography.bib has valid example entries

### 4. Repository Hygiene
- [ ] Commit all changes with clear message
- [ ] Push to main branch
- [ ] Check GitHub Actions (if any CI/CD is configured)

## Release Steps

### Step 1: Commit and Push Changes
```bash
cd /Users/karl/work/github/master-thesis-latex
git status
git add thesis_eng.tex thesis_ger.tex README.md START_HERE.md
git commit -m "Fix LaTeX typos and rewrite documentation for v1.0.0

- Fixed missing backslashes in thesis_eng.tex (4 instances)
- Fixed missing backslashes in thesis_ger.tex (4 instances)  
- Completely rewrote START_HERE.md with beginner-friendly 5-step guide
- Completely rewrote README.md with clear structure and instructions
- Removed references to non-existent files
- All instructions now correctly reference standalone files"
git push origin main
```

### Step 2: Create a Git Tag
```bash
# Create annotated tag for v1.0.0
git tag -a v1.0.0 -m "Release v1.0.0 - First stable release

Features:
- Standalone English and German thesis templates
- Complete beginner-friendly documentation
- APA7 formatting with biblatex
- Overleaf-ready structure
- Fixed all compilation errors

This release is suitable for students writing their Master's thesis."

# Push the tag to GitHub
git push origin v1.0.0
```

### Step 3: Create GitHub Release
1. Go to: https://github.com/MRI-Lab-Graz/master-thesis-latex/releases/new
2. Select tag: `v1.0.0`
3. Release title: `v1.0.0 - First Stable Release`
4. Description (copy below):

```markdown
# 🎓 APA7 Master Thesis Template - First Stable Release

This is the first stable release of the beginner-friendly LaTeX thesis template for University of Graz students.

## ✨ What's Included

- **Two standalone template files:**
  - `thesis_eng.tex` - Complete English thesis template
  - `thesis_ger.tex` - Complete German thesis template
  
- **Beginner-friendly documentation:**
  - `START_HERE.md` - Simple 5-step guide for absolute beginners
  - `README.md` - Comprehensive instructions and troubleshooting

- **Features:**
  - ✅ APA7 formatting (7th edition)
  - ✅ Automatic bibliography with Biber
  - ✅ English and German language support
  - ✅ Overleaf-ready (upload and compile immediately)
  - ✅ Example content and structure
  - ✅ University of Graz branding

## 🚀 Quick Start

1. Download this release as ZIP
2. Upload to Overleaf (https://www.overleaf.com)
3. Open `thesis_eng.tex` or `thesis_ger.tex`
4. Edit the metadata at the top (marked with CHANGE ME)
5. Start writing your thesis!

## 📖 Documentation

- **New to LaTeX?** Start with `START_HERE.md`
- **Need help?** Read `README.md` for full instructions
- **Questions?** Contact: karl.koschutnig@uni-graz.at

## 🔧 What's Fixed in This Release

- Fixed critical LaTeX compilation errors (missing backslashes)
- Rewrote all documentation for clarity
- Corrected file references throughout
- Improved beginner experience

## 📦 Installation

### For Overleaf (Recommended for students):
1. Download the source code ZIP below
2. Upload to Overleaf as new project
3. Compile and start writing

### For local builds (Advanced users):
1. Clone or download the repository
2. Ensure you have a full TeX distribution installed
3. Run `make build-en` or `make build-de`

## 🎯 Who is this for?

- Master's students at University of Graz
- Students writing theses in Psychology, Natural Sciences
- Anyone needing APA7-formatted academic documents
- LaTeX beginners using Overleaf

---

**Full Changelog:** Initial stable release
```

5. Attach the auto-generated source code ZIP
6. Mark as "Latest release"
7. Publish release

### Step 4: Verify Release
- [ ] Tag appears in GitHub
- [ ] Release page is published
- [ ] Download ZIP and test in Overleaf
- [ ] Share release link with a test student/colleague

## Post-Release

### Communication
- [ ] Announce to students/supervisors via email
- [ ] Update any existing Overleaf templates with new version
- [ ] Consider creating an Overleaf template gallery submission

### Monitoring
- [ ] Watch for GitHub issues
- [ ] Collect feedback from first users
- [ ] Document any common questions for FAQ

## Future Releases

### Version numbering:
- **v1.x.x** - Bug fixes, documentation improvements
- **v2.0.0** - Major changes (breaking changes to structure)
- **v1.x.0** - New features (non-breaking)

### Suggested improvements for v1.1.0:
- Add more example figures
- Add example tables with captions
- Add FAQ section
- Add video tutorial link
- Add Overleaf template gallery link
