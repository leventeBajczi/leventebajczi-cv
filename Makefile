all: clean
	cd src; \
	latexmk -jobname=leventebajczi_cv_en -pdf leventebajczi_cv_en.tex; \
	latexmk -jobname=leventebajczi_cv_en_long -pdf -pretex="\def\islong{1}" -usepretex leventebajczi_cv_en.tex; \
	latexmk -pdf leventebajczi_publist_en_cat
	$(MAKE) clean

clean:
	cd src; \
	echo Cleaning temporary files and PDF...; \
	rm -f *.aux *.dvi *.thm *.lof *.log *.lot *.fls *.out *.toc *.bbl *.blg *.fdb_latexmk