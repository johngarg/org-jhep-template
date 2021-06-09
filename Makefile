COMPILER = latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make $<
PROJNAME = main
TIKZ = tikz
RM = rm -f *.nav *.snm *.fls *.log *.fdb_latexmk *.aux *.synctex.gz *.vrb *.bbl proc.tex


.PHONY: $(PROJNAME).pdf all clean

all: $(PROJNAME).pdf

$(PROJNAME).pdf: $(PROJNAME).tex
	make images
	./postproc
	$(COMPILER) $(PROJNAME).tex

images:
	make -C $(TIKZ)

clean:
	latexmk -c; make clean -C $(TIKZ)

cleanall:
	latexmk -C; $(RM); make cleanall -C $(TIKZ)
