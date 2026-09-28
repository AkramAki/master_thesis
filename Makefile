.DEFAULT_GOAL := all
LATEXMK ?= latexmk

.PHONY: all thesis examples watch clean distclean

all: thesis

thesis:
	$(LATEXMK) thesis.tex

examples:
	$(LATEXMK) -outdir=build/examples examples/formatting.tex

watch:
	$(LATEXMK) -pvc -view=none thesis.tex

clean:
	$(LATEXMK) -c thesis.tex
	$(LATEXMK) -outdir=build/examples -c examples/formatting.tex

distclean:
	$(LATEXMK) -C thesis.tex
	$(LATEXMK) -outdir=build/examples -C examples/formatting.tex
