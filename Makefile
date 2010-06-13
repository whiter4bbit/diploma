PDFLATEX=pdflatex
LATEXOPTS=-halt-on-error
TEX_SOURCE=$(wildcard *.tex)
PDF_OBJECTS=$(TEX_SOURCE:.tex=.pdf)

all: clean diagrams pdfs presentpdf

presentpdf:
	make -C presentation/ pdf

diagrams:
	make -C uml/ pics

pdfs: $(PDF_OBJECTS)

%.pdf: %.tex
	$(PDFLATEX) $(LATEXOPTS) $<	

update_pdf:
	$(PDFLATEX) $(LATEXOPTS) whiter4bbit-sem10.tex
	
show:
	okular $(DOC_NAME).pdf	

clean:
	rm -f *.pdf *.aux *.log *.tok
	make -C presentation/ clean	
	make -C uml/ clean
