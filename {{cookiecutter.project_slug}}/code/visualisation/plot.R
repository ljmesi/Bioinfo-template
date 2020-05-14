# Using sink inspired by:
# https://github.com/snakemake-workflows/rna-seq-star-deseq2/blob/master/scripts/deseq2-init.R
log <- file(snakemake@log[["log"]], open="wt")
# Divert output to log file
sink(log)
# Divert messages, warning and stop to log file
sink(log, type="message")

library(tidyverse)
library(here)

source(here("code", "utils", "fig_params.R"))

dds_run <- readRDS(snakemake@input[["obj"]])

# Open file
png(snakemake@output[["plot"]], 
    width = width_px, 
    height = height_px
   )
# Create the plot
plotDispEsts(dds_run)
# Close the file
dev.off()

print(
    paste0("DESeq2 model dispersion plot drawn")
     )