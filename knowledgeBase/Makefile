PROJNAME=main

.PHONY: $(PROJNAME).pdf all clean

all: $(PROJNAME).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	latexmk -pdf -synctex=1 -verbose -interaction=nonstopmode -file-line-error $<

clean:
	latexmk -c
