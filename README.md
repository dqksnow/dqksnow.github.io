# Qingkai Dong Personal Website

This repository contains my personal academic website, academic CV, industry resume, publication PDFs, and cover letter sources.

## Layout

- `index.html`: homepage content for the personal website.
- `_config.yml`: site metadata for GitHub Pages.
- `BUILD.md`: local commands for generating resume PDFs without leaving auxiliary LaTeX files in the repo.
- `Makefile`: shortcuts for rebuilding the resume PDFs with `make resumes`.
- `assets/css/site.css`: custom website styling.
- `assets/images/`: website images.
- `assets/pdfs/`: publication PDFs and compiled resume PDFs.
- `resumes/academic.tex`: academic CV/resume source.
- `resumes/industry.tex`: industry resume source.
- `cover-letters/`: cover letter LaTeX sources.

## Update Checklist

When adding a new role, publication, project, or award:

1. Update `index.html` if the item should appear on the public website.
2. Update `resumes/academic.tex` if it matters for academic/research applications.
3. Update `resumes/industry.tex` if it matters for internships or industry applications.
4. Rebuild the resume PDFs in `assets/pdfs/` if either resume source changed.

The same experience can and should be written differently across the website, academic CV, and industry resume. Keep dates, titles, links, and publication details consistent, but tailor the prose to the audience.
