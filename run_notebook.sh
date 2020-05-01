#!/usr/bin/env bash
docker run -it --rm -d \
  --name ebm-code-release \
  -p ${JUPYTER_PORT:=8888}:8888 \
  -v "${PWD}:/home/jovyan/work" \
  -w "/home/jovyan/work" \
  --shm-size 512m \
  jupyter/scipy-notebook:64c893e91c60 "$@"
