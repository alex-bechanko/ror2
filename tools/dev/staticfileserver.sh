#!/bin/bash
# All scripts in this directory (including this one) are meant to be executed at the top-level of the project

# Start a file server that serves the json data file used by this project.
static-file-server serve --port 8080 --path build/
