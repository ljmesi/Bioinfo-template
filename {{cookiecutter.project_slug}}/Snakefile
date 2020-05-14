configfile: "Smake/config.yaml"
report: "Smake/report/workflow.rst"

MAX_THREADS = 4

# https://github.com/snakemake/snakemake/issues/179
# container: "docker://continuumio/miniconda3:4.8"

localrules:
    all

rule all:
    input:
        ""
        
# Load rules

include: "Smake/rules/example.smk"
