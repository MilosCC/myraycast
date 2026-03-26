#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Search Node.js Documentation
# @raycast.mode silent
# @raycast.packageName Web Searches

# Optional parameters:
# @raycast.icon images/nodejs.png
# @raycast.argument1 { "type": "text", "placeholder": "query", "percentEncoded": true }

# Documentation:
# @raycast.description Search the official Node.js API documentation
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

open "https://nodejs.org/en/search/?q=${1}"
