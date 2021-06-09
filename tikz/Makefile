COMPILER = latexmk -lualatex -use-make $<
RM = rm -f *.nav *.snm *.fls *.log *.fdb_latexmk *.aux *.synctex.gz *.vrb *.bbl

all:
	$(COMPILER) *.tex
	cp *.pdf ../img/

clean:
	latexmk -c

cleanall:
	latexmk -C; $(RM)

