#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search npm
# @raycast.mode silent
# @raycast.packageName Web Searches

# Optional parameters:
# @raycast.icon images/npm.png
# @raycast.argument1 { "type": "text", "placeholder": "package name", "percentEncoded": true }

# Documentation:
# @raycast.description Search for npm packages on npmjs.com
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

open "https://www.npmjs.com/search?q=${1}"
