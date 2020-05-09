# Contents

This directory contains Dockerfile for building image containing RStudio server. The container can started with, e.g.

```bash
docker run --rm -e PASSWORD=secret -p 8787:8787 -v $(pwd):/home/rstudio image:version
```