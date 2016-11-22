RST  = $(filter-out bib.rst,$(wildcard *.rst))
HTML = $(RST:.rst=.html)
TEX  = $(RST:.rst=.tex)
PDF  = $(TEX:.tex=.pdf)

all: figures cyberlearning.pdf

pdf: figures $(PDF) tidy

html: figures $(HTML) tidy

%.pdf: %.tex %.bib fig/*
	pdflatex $*
	bibtex   $*
	pdflatex $*
	pdflatex $*

%.tex: %.rst
	rst2latex --latex-preamble="`cat preamble.txt`" $^ > $@

%.html: %.rst
	rst2html $^ > $@

figures:
	$(MAKE) -C fig

tidy:
	$(MAKE) -C fig tidy
	echo DO NOT rm -f *bbl *blg *aux *toc *log *out *tex

clean: tidy
	$(MAKE) -C fig clean
	rm -f *html *pdf *tex
