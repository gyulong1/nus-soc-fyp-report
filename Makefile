FILE=report
ARCHIVE_PATH=archive

$(FILE).pdf: $(FILE).tex $(FILE).aux $(FILE).toc $(FILE).bbl 
	pdflatex -interaction=batchmode -shell-escape $(FILE).tex
	pdflatex -interaction=batchmode -shell-escape $(FILE).tex

$(FILE).bbl: $(FILE).bib
	bibtex -terse $(FILE)

$(FILE).aux: $(FILE).tex
	pdflatex -interaction=batchmode -shell-escape $(FILE).tex

$(FILE).toc: $(FILE).aux
	pdflatex -interaction=batchmode -shell-escape $(FILE).tex

reset: clean
	rm -f $(FILE).pdf

clean:
	rm -f $(FILE).toc $(FILE).log $(FILE).aux $(FILE).lof $(FILE).lot $(FILE).bbl $(FILE).blg $(FILE).dvi $(FILE).lol
	
archive: $(FILE).pdf
	mkdir -p $(ARCHIVE_PATH)
	mv report.pdf $(ARCHIVE_PATH)/report_$(shell date +%Y-%m-%d:%H:%M:%S).pdf
