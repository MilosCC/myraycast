# Copilot Instructions for myraycast

## Repository Overview

This is a personal **Raycast Script Commands** collection for macOS. It contains standalone scripts that are loaded directly into [Raycast](https://www.raycast.com/) (a macOS launcher/productivity app). There is **no build system, no package manager, no test suite, and no CI pipeline**. Scripts run directly on macOS.

## Repository Structure

```
.
├── README.md
└── commands/                        # All Raycast Script Commands live here
    ├── apps/                        # Integrations with specific macOS/web apps
    │   ├── Message/                 # Copy verification codes from iMessage (SQLite query)
    │   ├── chatgpt/                 # Open ChatGPT in Safari (AppleScript)
    │   ├── claude/                  # Submit prompts to Claude via Chrome (Node.js + chrome-cli)
    │   ├── devutils/                # DevUtils.app integrations via custom URL scheme
    │   ├── dictionary/              # Look up selected text in macOS Dictionary (AppleScript)
    │   ├── evernote/                # Create Evernote notes from clipboard (AppleScript)
    │   ├── notes/                   # Apple Notes integrations (AppleScript)
    │   ├── things/                  # Things 3 to-do management via URL scheme
    │   └── wikipedia/               # Wikipedia search (Python)
    ├── conversions/                 # Clipboard transformation utilities (bash, Node.js)
    ├── developer-utils/             # Developer productivity tools (bash, Node.js)
    ├── navigation/                  # Finder & editor navigation (AppleScript)
    └── web-searches/                # Quick web searches via `open` URL (bash)
```

Each command subdirectory may contain an `images/` folder for the Raycast icon.

## Script Languages Used

- **Bash** (`.sh`) – most common; uses macOS utilities (`pbcopy`, `pbpaste`, `open`, `date`, `uuidgen`, `sqlite3`, `curl`)
- **Node.js** (`.js`, shebang `#!/usr/bin/env node`) – uses `child_process` to call macOS tools
- **AppleScript** (`.applescript`) – direct macOS app automation
- **Python** (`.py`, shebang `#!/usr/bin/env python3`) – used sparingly

## Raycast Script Command Metadata Format

Every script **must** begin with a metadata header. Raycast reads these specially formatted comments:

### Bash / Shell example
```bash
#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title My Command Title
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🔑
# @raycast.packageName My Package
# @raycast.argument1 { "type": "text", "placeholder": "Input", "optional": true }

# Documentation:
# @raycast.description What this command does
# @raycast.author AuthorName
# @raycast.authorURL https://github.com/AuthorName
```

### Node.js example
```js
#!/usr/bin/env node

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title My Command
// @raycast.mode silent
// @raycast.packageName My Package

// Optional parameters:
// @raycast.icon 📋

// Documentation:
// @raycast.description What this command does
// @raycast.author AuthorName
// @raycast.authorURL https://github.com/AuthorName
```

### Key metadata fields

| Field | Required | Notes |
|---|---|---|
| `@raycast.schemaVersion` | Yes | Always `1` |
| `@raycast.title` | Yes | Display name in Raycast |
| `@raycast.mode` | Yes | `silent` (no output window), `compact` (inline), or `fullOutput` |
| `@raycast.packageName` | No | Groups commands in Raycast UI |
| `@raycast.icon` | No | Emoji or path like `images/icon.png` |
| `@raycast.argument1..3` | No | JSON object: `{ "type": "text", "placeholder": "...", "optional": true, "percentEncoded": true }` |
| `@raycast.description` | No | Shown in Raycast command details |
| `@raycast.author` | No | Attribution |
| `@raycast.authorURL` | No | Attribution URL |

Arguments are passed as `$1`, `$2`, `$3` in shell scripts, or `process.argv[2]`, `[3]`, `[4]` in Node.js.

## Common macOS Patterns Used

- **`pbcopy` / `pbpaste`** – read/write the macOS clipboard
- **`open "url"`** – open a URL in the default browser, or trigger a custom URL scheme (e.g., `things:///add?...`, `devutils://...`)
- **`osascript -e "..."`** – run inline AppleScript
- **`sqlite3 ~/Library/Messages/chat.db`** – query iMessage database directly
- **`uuidgen`** – generate UUIDs
- **`date +%s`** / `date -r <timestamp>` – Unix timestamp utilities

## Conventions

- New scripts go in the most appropriate category folder under `commands/`
- Use `@raycast.author MilosCC` and `@raycast.authorURL https://github.com/MilosCC` for scripts authored by the repo owner
- If a script has an image icon, place the image in an `images/` subdirectory of the command's folder and reference it as `images/filename.png`
- Use `@raycast.mode silent` for scripts that copy to clipboard or silently open things; use `@raycast.mode compact` for scripts that return a short text output
- Scripts should print a confirmation message (e.g. `echo "Copied: $value"`) when operating silently on the clipboard
- Use `percentEncoded: true` on URL arguments to handle special characters safely
- Error handling: print a user-friendly message and `exit 1` on failure

## External Dependencies

Some scripts require additional tools installed via Homebrew:
- `chrome-cli` – used by `commands/apps/claude/claude.js` to control Chrome
- `node` – required for `.js` scripts

No `npm install` or project-level dependency installation is needed. Dependencies are system-level.

## No Linting / Testing

There is no linter, formatter, or test runner configured in this repo. Validate scripts manually by:
1. Checking that the Raycast metadata header is correct (required fields present, valid JSON for arguments)
2. Running the script locally on macOS if possible
3. Verifying `pbcopy`/`pbpaste` and `open` calls work as expected

## Known Errors & Workarounds

- **`date -r` on macOS vs Linux**: The `date -r <timestamp>` syntax (BSD date) is macOS-specific. On Linux, use `date -d @<timestamp>`. All scripts here target macOS only.
- **`chrome-cli` JavaScript execution**: `chrome-cli execute` requires Chrome to have "Allow JavaScript from Apple Events" enabled (`View > Developer > Allow JavaScript from Apple Events`). Without it, the `claude.js` script will silently fail.
- **Messages database access**: `copycode.sh` reads `~/Library/Messages/chat.db` via `sqlite3`. This requires Full Disk Access permission for the terminal/app running the script. Without it, the query returns empty results.
- **AppleScript permissions**: AppleScript-based commands (e.g., Notes, Evernote, Dictionary integrations) require Automation permissions for the terminal/Raycast app in System Settings > Privacy & Security > Automation.
