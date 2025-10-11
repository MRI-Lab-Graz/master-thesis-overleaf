# Makefile for building the thesis locally
PDF = thesis.pdf
TEX = thesis.tex

.PHONY: build clean

build:
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode -file-line-error" -use-biber $(TEX)

clean:
	latexmk -c

distclean:
	rm -f $(PDF)
	rm -rf _minted-*

zip:
	./scripts/make_overleaf_zip.sh
