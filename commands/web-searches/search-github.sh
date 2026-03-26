#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search GitHub
# @raycast.mode silent
# @raycast.packageName Web Searches

# Optional parameters:
# @raycast.icon images/github.png
# @raycast.argument1 { "type": "text", "placeholder": "query", "percentEncoded": true }

# Documentation:
# @raycast.description Search GitHub repositories, issues, and code
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

open "https://github.com/search?q=${1}&type=repositories"
