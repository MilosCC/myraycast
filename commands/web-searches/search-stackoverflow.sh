#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search Stack Overflow
# @raycast.mode silent
# @raycast.packageName Web Searches

# Optional parameters:
# @raycast.icon images/stackoverflow.png
# @raycast.argument1 { "type": "text", "placeholder": "query", "percentEncoded": true }

# Documentation:
# @raycast.description Search Stack Overflow for answers to programming questions
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

open "https://stackoverflow.com/search?q=${1}"
