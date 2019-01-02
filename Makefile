compile:
	pdflatex main.tex
	biber main
	pdflatex main.tex

clean:
	rm -f  *.out *aux *bbl *blg *log *toc *.ptb *.tod *.fls *.fdb_latexmk *.lof *.lot *.bcf
	rm -f main-blx.bib
	rm -f main.run.xml

compile-bibtex:
	pdflatex main.tex
	bibtex main
	pdflatex main.tex

export:
	mkdir -p exports/
	mv main.pdf "exports/`date +'%Y-%m-%d_%H-%M-%S'`_`basename ~+`.pdf"
