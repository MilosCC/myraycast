#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title URL Encode
# @raycast.mode silent
# @raycast.packageName Conversions

# Optional parameters:
# @raycast.icon 🔗

# Documentation:
# @raycast.description URL-encode the current clipboard content and copy the result back to the clipboard
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

if ! command -v python3 &> /dev/null; then
  echo "python3 is required"
  exit 1
fi

encoded=$(pbpaste | python3 -c "import sys, urllib.parse; print(urllib.parse.quote(sys.stdin.read(), safe=''), end='')")
echo -n "$encoded" | pbcopy
echo "URL-encoded and copied to clipboard"
