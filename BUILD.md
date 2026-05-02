# Local PDF Build

This repo keeps the LaTeX sources in `resumes/` and the published PDFs in `assets/pdfs/`.

The simplest local build is:

```bash
make resumes
```

The commands below show the equivalent manual workflow. They compile into a temporary directory and move only the final PDFs into the repo, so no `*.aux`, `*.log`, or similar build files are left behind.

## Academic Resume

```bash
tmpdir="$(mktemp -d)"
pdflatex -interaction=nonstopmode -halt-on-error -output-directory="$tmpdir" resumes/academic.tex
mv "$tmpdir/academic.pdf" assets/pdfs/resume-academic.pdf
rm -rf "$tmpdir"
```

## Industry Resume

```bash
tmpdir="$(mktemp -d)"
pdflatex -interaction=nonstopmode -halt-on-error -output-directory="$tmpdir" resumes/industry.tex
mv "$tmpdir/industry.pdf" assets/pdfs/resume-industry.pdf
rm -rf "$tmpdir"
```

## Build Both

```bash
tmpdir="$(mktemp -d)"
pdflatex -interaction=nonstopmode -halt-on-error -output-directory="$tmpdir" resumes/academic.tex
pdflatex -interaction=nonstopmode -halt-on-error -output-directory="$tmpdir" resumes/industry.tex
mv "$tmpdir/academic.pdf" assets/pdfs/resume-academic.pdf
mv "$tmpdir/industry.pdf" assets/pdfs/resume-industry.pdf
rm -rf "$tmpdir"
```

## Notes

- If `pdflatex` stops with a missing-package error, install the required LaTeX package in your local TeX distribution first.
- The website links expect the final PDFs to live at:
  - `assets/pdfs/resume-academic.pdf`
  - `assets/pdfs/resume-industry.pdf`
