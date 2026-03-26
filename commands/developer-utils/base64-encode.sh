#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Base64 Encode
# @raycast.mode silent
# @raycast.packageName Developer Utils

# Optional parameters:
# @raycast.icon 🔐

# Documentation:
# @raycast.description Base64-encode the current clipboard content and copy the result back to the clipboard
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

encoded=$(pbpaste | base64 | tr -d '\n')
echo -n "$encoded" | pbcopy
echo "Encoded and copied to clipboard"
