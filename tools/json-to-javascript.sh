#!/bin/bash

# a hacky script to make a json file a javascript object loadable via a <script> tag
# yes this is hacky don't sass me

sed -e "1 s/^/var $1 = /" -e '$ s/$/;/' -i $2
