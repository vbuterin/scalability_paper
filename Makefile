LATEX=pdflatex
BIBTEX=bibtex
FIGURES=figs/pdfs/game.pdf figs/pdfs/multilevel.pdf figs/pdfs/revert1.pdf figs/pdfs/revert2.pdf figs/pdfs/revert3.pdf figs/pdfs/schellingcoin_payoff1.pdf figs/pdfs/schellingcoin_payoff2.pdf

all: scalability.pdf

figs/pdfs/%.pdf : figs/svgs/%.svg
	make -C figs pdfs/$(notdir $@)

version.tex:
	git describe --abbrev=0 --tags > $@

scalability.pdf: scalability.tex $(FIGURES) version.tex
	$(LATEX) $<
	#$(BIBTEX) $(basename $@)
	$(LATEX) $<
	$(LATEX) $<
	$(LATEX) $<

clean:
	rm -f scalability.pdf scalability.aux scalability.bbl scalability.blg scalability.log scalability.toc scalability.synctex.gz version.tex
