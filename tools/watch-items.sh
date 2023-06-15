#!/bin/bash

inotifywait --monitor data/items.nix schemas/items.schema.nix | 
	while read path event name ; do
		make check-schema
	done
