# Define the main document name (without the .tex extension)
DOC = main

# Define the LuaLaTeX command
LATEX = lualatex

# Define the source file
SRC = $(DOC).tex

# Define the output PDF file
PDF = $(DOC).pdf

VIEWER = okular

# Define the auxiliary files to clean up
AUX_FILES = $(DOC).aux $(DOC).log $(DOC).out $(DOC).toc $(DOC).fls $(DOC).fdb_latexmk

# Default target to build the PDF
all: $(PDF)

# Rule to build the PDF
$(PDF): $(SRC)
	$(LATEX) $(SRC)

# Clean up auxiliary files
clean:
	rm -f $(AUX_FILES)
	rm -f $(PDF)

# Clean up and remove the PDF
cleanall: clean
	rm -f $(PDF)

# Specify the .PHONY targets
.PHONY: all clean cleanall

view: $(PDF)
	$(VIEWER) $(PDF) &
