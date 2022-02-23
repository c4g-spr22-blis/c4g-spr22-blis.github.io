#!/bin/bash

# Pseudo-daemonized `mkdocs serve` for running in the background on devcontainers

nohup mkdocs serve > /workspaces/c4g-spr22-blis.github.io/.devcontainer/mkdocs.log &