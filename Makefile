PDF_DIR := assets/pdfs

.PHONY: resumes academic-resume industry-resume clean

resumes: academic-resume industry-resume

academic-resume:
	@tmpdir="$$(mktemp -d)"; \
	pdflatex -interaction=nonstopmode -halt-on-error -output-directory="$$tmpdir" resumes/academic.tex; \
	mv "$$tmpdir/academic.pdf" $(PDF_DIR)/resume-academic.pdf; \
	rm -rf "$$tmpdir"

industry-resume:
	@tmpdir="$$(mktemp -d)"; \
	pdflatex -interaction=nonstopmode -halt-on-error -output-directory="$$tmpdir" resumes/industry.tex; \
	mv "$$tmpdir/industry.pdf" $(PDF_DIR)/resume-industry.pdf; \
	rm -rf "$$tmpdir"

clean:
	@rm -f $(PDF_DIR)/resume-academic.pdf $(PDF_DIR)/resume-industry.pdf
