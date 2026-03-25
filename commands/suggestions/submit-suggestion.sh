#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Submit Suggestion
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 💡
# @raycast.packageName Suggestions
# @raycast.argument1 { "type": "text", "placeholder": "Your suggestion", "percentEncoded": true }

# Documentation:
# @raycast.description Open a new GitHub issue to submit a suggestion or feedback for this Raycast setup.
# @raycast.author MilosCC
# @raycast.authorURL https://github.com/MilosCC

# Note: $1 is percent-encoded by Raycast (percentEncoded: true in argument definition),
# so special characters in the suggestion text are safely encoded before being used in the URL.
open "https://github.com/MilosCC/myraycast/issues/new?title=$1&labels=suggestion"
