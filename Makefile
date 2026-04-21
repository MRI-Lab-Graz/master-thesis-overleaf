# Makefile for building the thesis locally
PDF_EN = thesis_eng.pdf
PDF_DE = thesis_ger.pdf

# Override these from the environment if your TeX binaries are not on PATH.
PDFLATEX ?= pdflatex
BIBER ?= biber
LATEXMK ?= latexmk

.PHONY: build build-en build-de build-all clean distclean zip zip-check

# Default: build the English student wrapper.
build: build-en

build-en:
	$(PDFLATEX) -interaction=nonstopmode -file-line-error thesis_eng.tex
	$(BIBER) $(basename thesis_eng.tex)
	$(PDFLATEX) -interaction=nonstopmode -file-line-error thesis_eng.tex
	$(PDFLATEX) -interaction=nonstopmode -file-line-error thesis_eng.tex
	# move output to predictable filename
	@mv -f $(basename thesis_eng.tex).pdf $(PDF_EN) || true

build-de:
	$(PDFLATEX) -interaction=nonstopmode -file-line-error thesis_ger.tex
	$(BIBER) $(basename thesis_ger.tex)
	$(PDFLATEX) -interaction=nonstopmode -file-line-error thesis_ger.tex
	$(PDFLATEX) -interaction=nonstopmode -file-line-error thesis_ger.tex
	@mv -f $(basename thesis_ger.tex).pdf $(PDF_DE) || true

build-all: build-en build-de

clean:
	$(LATEXMK) -c || rm -f *.aux *.log *.out *.toc *.bbl *.blg *.bcf *.run.xml *.lof *.lot

distclean:
	rm -f $(PDF_EN) $(PDF_DE)
	rm -rf _minted-*

zip:
	./scripts/make_overleaf_zip.sh

zip-check: zip
	bash ./scripts/verify_overleaf_zip.sh
