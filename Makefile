# Makefile for building the thesis locally
PDF_EN = thesis_eng.pdf
PDF_DE = thesis_ger.pdf

.PHONY: build build-en build-de build-all clean distclean zip

# Default: build English wrapper (keeps backward compatibility with CI/scripts)
build: build-en

build-en:
	pdflatex -interaction=nonstopmode -file-line-error thesis_eng.tex
	biber $(basename thesis_eng.tex)
	pdflatex -interaction=nonstopmode -file-line-error thesis_eng.tex
	pdflatex -interaction=nonstopmode -file-line-error thesis_eng.tex
	# move output to predictable filename
	@mv -f $(basename thesis_eng.tex).pdf $(PDF_EN) || true

build-de:
	pdflatex -interaction=nonstopmode -file-line-error thesis_ger.tex
	biber $(basename thesis_ger.tex)
	pdflatex -interaction=nonstopmode -file-line-error thesis_ger.tex
	pdflatex -interaction=nonstopmode -file-line-error thesis_ger.tex
	@mv -f $(basename thesis_ger.tex).pdf $(PDF_DE) || true

build-all: build-en build-de

clean:
	latexmk -c

distclean:
	rm -f $(PDF_EN) $(PDF_DE)
	rm -rf _minted-*

zip:
	./scripts/make_overleaf_zip.sh
