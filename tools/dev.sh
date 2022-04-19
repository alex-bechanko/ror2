#!/bin/bash

#start subshell to trap kill signals
(
trap 'kill 0' SIGINT;
# start a file server that serves the data file
static-file-server serve --port 8080 --path build/ >/dev/null 2>&1 &

cd web && elm reactor
)