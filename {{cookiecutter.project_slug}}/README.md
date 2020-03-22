{{cookiecutter.project_slug}}
==============================

{{cookiecutter.project_short_description}}

Project Organization
--------------------

```
    project
    |- README.md                    # the top level description of content (this doc)
    |- CONTRIBUTING.md              # instructions for how to contribute to your project
    |- LICENSE                      # the license for this project
    |- CITATION                     # instructions on how to cite the work
    |
    |- study/
    | |- header.sty                 # LaTeX header file to format pdf version of manuscript
    | |- bibliography.bib           # BibTeX formatted references
    | |- csl/                       # csl files to format references
    | |- study.Rmd                  # executable Rmarkdown for this study, if applicable
    | |- study.md                   # Markdown (GitHub) version of the *.Rmd file
    | |- study.tex                  # TeX version of *.Rmd file
    | |- study.pdf                  # PDF version of *.Rmd file
    | |- study.html                 # html version of *.Rmd file
    |
    |- data                         # raw and primary data, are not changed once created
    | |- references/                # reference files to be used in analysis
    | |- raw/                       # raw data, will not be altered
    | |- processed/                 # cleaned data, will not be altered once created;
    |                               # will be committed to repo
    |
    |- docker                       # Files related to docker virtualisation
    | |- Dockerfile                 # Dockerfile defining the development environment
    | |- add_shiny.sh               # These four files below are all configuration files
    | |- disable_auth_rserver.conf  # used in building an image from the Dockerfile
    | |- pam-helper.sh              # obtained from Rocker projects github page:
    | |- userconf.sh                # https://github.com/rocker-org/rocker-versioned/tree/master/rstudio
    |                               # The Dockerfile has also heavily loaned code from the Rocker project:
    |                               # https://www.rocker-project.org/
    |
    |- presentations                # presentations about the project 
    | |- _output.yaml               # shared configurations for all presentations
    | |- style.css                  # css for modifying features in presentation
    | |- presentation.Rmd           # R revealjs presentation
    | |- presentation.html          # rendered html of presentation.Rmd
    | |- images/                    # images and other graphics for the presentation
    |
    |- code/                        # any programmatic code
    | |- test/                      # tests for the code
    |
    |- results                      # all output from workflows and analyses
    | |- tables/                    # tables and other tabular data
    | |- figures/                   # graphs, likely designated for manuscript figures
    | |- pictures/                  # diagrams, images, and other non-graph graphics
    |
    |- exploratory/                 # exploratory data analysis for study
    | |- notebook/                  # preliminary analyses
    | |- scratch/                   # temporary files that can be safely deleted or lost
    |
    |- Snakefile                    # executable Snakefile for this study, if applicable
```