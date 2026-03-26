#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Generate UUID
# @raycast.mode silent
# @raycast.packageName Developer Utils

# Optional parameters:
# @raycast.icon 🔑

# Documentation:
# @raycast.description Generate a random UUID (v4) and copy it to the clipboard
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

uuid=$(uuidgen | tr '[:upper:]' '[:lower:]')
echo -n "$uuid" | pbcopy
echo "Copied: $uuid"
