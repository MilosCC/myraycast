#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Base64 Decode
# @raycast.mode silent
# @raycast.packageName Developer Utils

# Optional parameters:
# @raycast.icon 🔓

# Documentation:
# @raycast.description Base64-decode the current clipboard content and copy the result back to the clipboard
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

decoded=$(pbpaste | base64 --decode 2>/dev/null)
if [ $? -ne 0 ]; then
  echo "Clipboard content is not valid Base64"
  exit 1
fi
echo -n "$decoded" | pbcopy
echo "Decoded and copied to clipboard"
