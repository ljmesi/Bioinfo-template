---
title: "Example title name"
author: "Author name"
date: "2020-03-17"
link-citations: true
bibliography: bibliography.bib
biblio-style: "alpha" #https://www.overleaf.com/learn/latex/Bibtex_bibliography_styles
#csl: csl/pnas.csl
subtitle: "Some example subtitle"
subject: "This subject text can be viewed in pdf properties."
knit: (function(inputFile, encoding) {
  rmarkdown::render(inputFile, encoding = encoding, output_dir = "output") })
# Options influencing pdf output format
#fontsize: 11pt
geometry: margin=1.0in
keywords: 
  - these
  - keywords
  - "are visible in"
  - "pdf properties"
output:
  bookdown::pdf_document2:
    keep_md: yes 
    keep_tex: yes
    #includes:
    #  in_header: header.sty
    latex_engine: xelatex
    # For more pandoc args see:
    # https://pandoc.org/MANUAL.html
    pandoc_args: ["--top-level-division=section",
                  "-V", "documentclass=article",
                  "-V", "linkcolor=MidnightBlue",
                  "-V", "citecolor=Aquamarine",
                  "-V", "urlcolor=NavyBlue",
                  "-V", "toccolor=NavyBlue",
                  "-V", "pagestyle=headings"]
  bookdown::html_document2:
    highlight: tango
    # Other available themes: “cerulean”, “cosmo”, “flatly”, “journal”, “lumen”, “paper”, “readable”, “sandstone”, “simplex”, “spacelab” and “united”
    theme: yeti
    split_by: none # only generate a single output page
    self_contained: TRUE
    toc: yes
    keep_md: yes 
    toc_float: 
      collapsed: FALSE
      smooth_scroll: TRUE
      print: FALSE
    code_folding: hide
    number_sections: TRUE
    code_download: TRUE
    pandoc_args: ["--top-level-division=section",
              "-V", "documentclass=report"]
---



\clearpage
# Introduction

Here is introduction to this example document. This document is written in R Studio server [@RStudioTeam2020] and running in R Docker container [@Boettiger2017].

## The file structure

The file structure of this default project is inspired by [SchlossLabs new_project github repository](https://github.com/SchlossLab/new_project), article by @Wilson2017 and 


Here below is a simple schema of it:

```
project
|- README.md       								# the top level description of content (this doc)
|- CONTRIBUTING    								# instructions for how to contribute to your project
|- LICENSE         								# the license for this project
|- CITATION        								# instructions on how to cite the work
|
|- study/
| |- header.sty   								# LaTeX header file to format pdf version of manuscript
| |- bibliography.bib							# BibTeX formatted references
| |- csl/         								# csl files to format references
| |- study.Rmd    								# executable Rmarkdown for this study, if applicable
| +- output/       								# images and other graphics for the presentation
| | |- study.md     							# Markdown (GitHub) version of the *.Rmd file
| | |- study.tex    							# TeX version of *.Rmd file
| | |- study.pdf    							# PDF version of *.Rmd file
| | |- study.html  								# html version of *.Rmd file
|
|- data           								# raw and primary data, are not changed once created
| |- references/  								# reference files to be used in analysis
| |- raw/         								# raw data, will not be altered
| |- processed/   								# cleaned data, will not be altered once created;
|                 								# will be committed to repo
|
|- docker          								# Files related to docker virtualisation
| |- Dockerfile         					# Dockerfile defining the development environment
| |- add_shiny.sh       					# These four files below are all configuration files
| |- disable_auth_rserver.conf    # used in building an image from the Dockerfile
| |- pam-helper.sh      					# obtained from Rocker projects github page:
| |- userconf.sh        					# https://github.com/rocker-org/rocker-versioned/tree/master/rstudio
|                                 # The Dockerfile has also heavily loaned code from the Rocker project:
|                                 # https://www.rocker-project.org/
|
|- presentations  								# presentations about the project 
| |- _output.yaml 								# shared configurations for all presentations
| |- style.css    								# css for modifying features in presentation
| |- presentation.Rmd   					# Rrevealjs presentation
| |- presentation.html  					# rendered html of presentation.Rmd
| |- images/      								# images and other graphics for the presentation
|
|- scripts/          							# any programmatic code
|
|- results        								# all output from workflows and analyses
| |- tables/      								# tables and other tabular data
| |- figures/     								# graphs, likely designated for manuscript figures
| |- pictures/    								# diagrams, images, and other non-graph graphics
|
|- exploratory/   								# exploratory data analysis for study
| |- notebook/    								# preliminary analyses
| |- scratch/     								# temporary files that can be safely deleted or lost
|
|- Snakefile       								# executable Snakefile for this study, if applicable
```



\clearpage
# Some chapter

I prefer that 1. level headings start from a new page and try not to have heading levels higher than 2.

Here is an example Figure 1.

![Here is an example figure.](../presentations/images/example.jpg){width=67%}

## Here is a sub chapter

Footnotes can be inserted with a simple syntax[^foot-note]. The following Table 1 is an example.

| No   | Column 1    | Column 2 |
| ---- | ----------- | -------- |
| 1    | Some        | Data     |
| 2    | Here too    | and here |
| 3    | and finally | here     |
Table: Here is an example table.

In order to convert this Rmarkdown document to both html and pdf format, you should move this section in the YAML header:

```
  bookdown::pdf_document2:
    keep_tex: no
    latex_engine: xelatex
    # For more pandoc args see:
    # https://pandoc.org/MANUAL.html
    pandoc_args: ["--top-level-division=section",
                  "-V", "documentclass=article",
                  "-V", "linkcolor=MidnightBlue",
                  "-V", "citecolor=Aquamarine",
                  "-V", "urlcolor=NavyBlue",
                  "-V", "toccolor=NavyBlue",
                  "-V", "pagestyle=headings"]
```

above this section:

```
  bookdown::html_document2:
    highlight: tango
    theme: yeti
    split_by: none # only generate a single output page
    self_contained: TRUE
    toc: yes
    toc_float: 
      collapsed: FALSE
      smooth_scroll: TRUE
      print: FALSE
    code_folding: hide
    number_sections: TRUE
    code_download: TRUE
    pandoc_args: ["--top-level-division=section",
              "-V", "documentclass=report"]
```

but below the line with `output: `. This is quite hacky but it works for now...

[^foot-note]: Here is a foot note text.

\clearpage
# Session info


```r
sessionInfo()
```

```
R version 3.6.1 (2019-07-05)
Platform: x86_64-pc-linux-gnu (64-bit)
Running under: Debian GNU/Linux 9 (stretch)
...
```

\clearpage
# References
