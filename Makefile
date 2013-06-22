CODES=$(addprefix build/, $(addsuffix .tex, $(wildcard code/*)))

all: debuggable_code.pdf

debuggable_code.pdf: debuggable_code.tex $(CODES)
	xelatex -output-directory build debuggable_code.tex 
	cp build/debuggable_code.pdf .

build/code/%.tex: code/%
	mkdir -p build/code
	pygmentize -f latex $< > $@

clean:
	rm -rf build/ debuggable_code.pdf

force:
	make clean
	make
