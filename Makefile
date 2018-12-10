project:=spectrum
ext= tex

all:
	pdflatex ${project}.$(ext)

imgs: 
	pdflatex attack-params-table.tex
	pdflatex boom-core-params-table.tex
	pdflatex spec-attack-results-table.tex
	pdflatex spec-buf-results-table.tex
	pdflatex speed-attack-graph.tex
	pdflatex spec-v1-printout.tex
	convert -density 500 -quality 100  attack-params-table.pdf attack-params-table.png
	convert -density 500 -quality 100  boom-core-params-table.pdf boom-core-params-table.png
	convert -density 500 -quality 100  spec-attack-results-table.pdf spec-attack-results-table.png
	convert -density 500 -quality 100  spec-buf-results-table.pdf spec-buf-results-table.png
	convert -density 500 -quality 100  speed-attack-graph.pdf speed-attack-graph.png
	convert -density 500 -quality 100  spec-v1-printout.pdf spec-v1-printout.png

clean:
	-rm ./*.png
	-rm ./*.dvi
	-rm ./*.aux
	-rm ./*.out
	-rm ./*.log
	-rm ./*.pdf
