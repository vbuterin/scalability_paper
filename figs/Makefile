FIGURES=pdfs/game.pdf pdfs/multilevel.pdf pdfs/revert1.pdf pdfs/revert2.pdf pdfs/revert3.pdf pdfs/schellingcoin_payoff1.pdf pdfs/schellingcoin_payoff2.pdf

all: $(FIGURES)

pdfs/%.pdf : svgs/%.svg
	inkscape $< --export-pdf=$@

clean:
	rm -f $(FIGURES)
