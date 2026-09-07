LLMK      = llmk
FLAGS     = --quiet --silent

SRC       = $(wildcard *.tex)
PDFS      = $(SRC:.tex=.pdf)

DEPS        = $(shell find assets -type f 2>/dev/null)

EXTRA_CLEAN = *.synctex.gz *-blx.bib *.run.xml *.nav *.snm *.vrb *.fdb_latexmk

.PHONY: all compile clean mrproper

all: $(PDFS)

%.pdf: %.tex $(DEPS) 
	@$(LLMK) $(FLAGS) $<
	@$(LLMK) --quiet --clean $<
	@rm -f $(basename $<).synctex.gz

clean:
	@for f in $(SRC); do \
		$(LLMK) --quiet --clean $$f ; \
	done
	@rm -f $(EXTRA_CLEAN)

mrproper: clean
	@for f in $(SRC); do \
		$(LLMK) --quiet --clobber $$f ; \
	done
	@rm -f $(PDFS) $(EXTRA_CLEAN)

# vim: set ft=make noet ts=8 sw=8 :
