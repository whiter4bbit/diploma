DIA_SRC=$(notdir $(wildcard *.dia))
IMAGES=$(DIA_SRC:.dia=.svg)

pics: $(IMAGES)

%.svg: %.dia
       dia $< -e svg/$@ -t svg
       
