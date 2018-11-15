project:=spectrum

all:
	pdflatex ${project}.tex

clean:
	-rm ./*.aux
	-rm ./*.log
	-rm ./*.pdf
