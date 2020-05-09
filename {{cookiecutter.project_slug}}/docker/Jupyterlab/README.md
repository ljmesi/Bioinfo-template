# Contents

This directory contains Dockerfile for building image containing Jupyterlab. The container can started with, e.g.

```bash
docker run -v $(pwd):/home/jovyan/work --rm -e JUPYTER_ENABLE_LAB=yes -p 8888:8888 bioinfo-jupyterlab:1 start-notebook.sh
```