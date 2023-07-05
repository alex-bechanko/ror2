#!/bin/bash
# All scripts in this directory (including this one) are meant to be executed at the top-level of the project

# Run the tailwindcss process with the project's configuration
tailwindcss -i web/styles/input.css -o web/styles/style.css -c web/styles/tailwind.config.js --watch
