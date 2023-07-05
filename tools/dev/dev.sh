#!/bin/bash

#start subshell to trap kill signals
(
trap 'kill 0' SIGINT;

bash tools/dev/staticfileserver.sh >/dev/null 2>&1 &

bash tools/dev/tailwind.sh >/dev/null 2>&1 &

cd web && elm reactor
)
