DIA_SRC=$(notdir $(wildcard uml/*.dia))
IMAGES=$(DIA_SRC:.dia=.eps)
PDFLATEX=pdflatex
LATEXOPTS=-halt-on-error
DOC_NAME=whiter4bbit-sem10
TEX_SOURCE=$(DOC_NAME).tex
PDF_OBJECTS=$(TEX_SOURCE:.tex=.pdf)

all: clean pics pdfs

pdfs: $(PDF_OBJECTS)

%.pdf: %.tex
	$(PDFLATEX) $(LATEXOPTS) $<	

update_pdf:
	$(PDFLATEX) $(LATEXOPTS) $(TEX_SOURCE)	
	
show:
	okular $(DOC_NAME).pdf	

pics: $(IMAGES)

%.eps: uml/%.dia
	dia $< -e uml/$@ -t eps-pango
	epstopdf uml/$@

clean:
	rm -f *.pdf *.aux *.log *.tok
	
