#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Unix Timestamp
# @raycast.mode silent
# @raycast.packageName Developer Utils

# Optional parameters:
# @raycast.icon 🕐
# @raycast.argument1 { "type": "text", "placeholder": "Timestamp to convert (leave blank for now)", "optional": true }

# Documentation:
# @raycast.description Get the current Unix timestamp, or convert a Unix timestamp to a human-readable date. Copies result to clipboard.
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

if [ -z "$1" ]; then
  result=$(date +%s)
  echo -n "$result" | pbcopy
  echo "Copied: $result"
else
  result=$(date -r "$1" 2>/dev/null)
  if [ $? -ne 0 ]; then
    echo "Invalid timestamp: $1"
    exit 1
  fi
  echo -n "$result" | pbcopy
  echo "Copied: $result"
fi
