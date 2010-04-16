DIA_SRC=$(notdir $(woldcard *.dia))
IMAGES=$(DIA_SRC:.dia=.svg)

pics: $(IMAGES)

%.svg: %.dia
       dia $< -e svg/$@ -t svg
       
