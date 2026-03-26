#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Prettify JSON
# @raycast.mode silent
# @raycast.packageName Conversions

# Optional parameters:
# @raycast.icon 📋

# Documentation:
# @raycast.description Prettify the JSON content in your clipboard and copy the result back
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

if ! command -v python3 &> /dev/null; then
  echo "python3 is required"
  exit 1
fi

result=$(pbpaste | python3 -m json.tool 2>/dev/null)
if [ $? -ne 0 ]; then
  echo "Clipboard content is not valid JSON"
  exit 1
fi
echo -n "$result" | pbcopy
echo "Prettified JSON copied to clipboard"
