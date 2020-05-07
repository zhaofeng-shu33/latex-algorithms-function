BUILD_DIR = ./build

.PHONY: all

all: $(BUILD_DIR)/algorithms.pdf $(BUILD_DIR)/example.pdf

$(BUILD_DIR)/algorithms.pdf: algorithms.dtx
	mkdir -p $(BUILD_DIR)
	rm -r /usr/local/texlive/texmf-dist/tex/latex/algorithms || true
	pdflatex algorithms/algorithms.ins
	pdflatex -output-directory=$(BUILD_DIR) algorithms.dtx

algorithms.dtx: algorithms/algorithms.dtx
	cp algorithms/algorithms.dtx ./

$(BUILD_DIR)/example.pdf: example.tex
	pdflatex -output-directory=$(BUILD_DIR) example.tex
