# GraphViz and GNUplot files
DOT    = $(wildcard *.dot)
CIRCO  = $(wildcard *.circo)
TWOPI  = $(wildcard *.twopi)
GP     = $(wildcard *.gp)

# Native PostScript
PS    = $(wildcard *.ps)

# Generated EPS
EPS    = $(DOT:.dot=.eps)
EPS   += $(CIRCO:.circo=.eps)
EPS   += $(TWOPI:.twopi=.eps)
#EPS   += $(GP:.gp=.eps)

# All PDFs generated
PDF    = $(wildcard *.pdf)


all : $(EPS)

pdf: $(PDF)

%.pdf: %.eps
	epstopdf $^

ws.eps: ws.ps
	ps2eps -R + -f --size=`identify ws.ps | awk '{print $$3}'` $^

lattice.eps: lattice.ps
	ps2eps -R + -f --size=`identify lattice.ps | awk '{print $$3}'` $^
	
%.ps: %.gp
	gnuplot $*.gp

%.eps: %.ps
	ps2eps -f --size=`identify $*.ps | awk '{print $$3}'` $^

%.eps: %.dot
	dot   -Teps $^ > $*.eps

%.eps: %.circo
	circo -Teps $^ > $*.eps

%.eps: %.twopi
	twopi -Teps $^ > $*.eps

tidy:
	rm -f $(PDF)

clean: tidy
	rm -f $(EPS) $(PS)
