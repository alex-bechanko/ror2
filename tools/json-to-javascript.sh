#!/usr/bin/env bash

# a hacky script to make a json file a javascript object loadable via a <script> tag
# yes this is hacky don't sass me

variable_name=$1
json_file=$2

sed -e "1 s/^/var ${variable_name} = /" -e '$ s/$/;/' -i "${json_file}"
