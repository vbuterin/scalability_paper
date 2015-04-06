LATEX=pdflatex
BIBTEX=bibtex

all: scalability.pdf

scalability.pdf: scalability.tex
	$(LATEX) $<
	#$(BIBTEX) $(basename $@)
	$(LATEX) $<
	$(LATEX) $<
	$(LATEX) $<

clean:
	rm -f scalability.pdf
