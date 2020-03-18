---
title: "Example title name"
author: "Author name"
date: "2020-03-18"
link-citations: true
bibliography: bibliography.bib
biblio-style: "alpha" #https://www.overleaf.com/learn/latex/Bibtex_bibliography_styles
#csl: csl/pnas.csl
subtitle: "Some example subtitle"
subject: "This subject text can be viewed in pdf properties."
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
