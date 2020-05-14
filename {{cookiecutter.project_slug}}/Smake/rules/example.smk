rule example:
    input:
        raw_counts = "data/processed/counts.txt"
    output:
        plot = report("results/pictures/"
                      "plot.png",
                      caption = "../report/captions/plot.rst",
                      category = "Stage 1"
                     )
    conda:
        "../environments/env.yaml"
    threads: 
        MAX_THREADS
    log: 
        log = "Smake/logs/plot.log"
    script:
        "../../code/visualisation/plot.R"