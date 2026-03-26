# My Raycast Setup 🚀

This repository contains my **personal Raycast setup**: the scripts, custom extensions, commands, and configuration I use to speed up my daily work on macOS.

The idea is simple:

- Keep my Raycast tools **version-controlled**
- Make it easy to **set up a new Mac** in minutes
- Share ideas and examples for **custom Raycast scripts & extensions**

---

## 🌟 What’s Inside

A quick overview of what this repo is meant to hold:

- `scripts/` – standalone scripts used via Raycast Script Commands  
  - Shell, JavaScript, Python, etc.
- `extensions/` – custom Raycast extensions (Node/TypeScript projects)
- `raycast-settings/` – exported or documented settings, like:
  - Favorite extensions
  - Quicklinks
  - Snippets
  - Commands/scripts I rely on daily
- `config-examples/` – notes, keybinding ideas, and setup guides

> Note: Some files here are “templates” or examples. You can adapt the structure to match your own setup.

---

## 🧩 Raycast Overview (for context)

[Raycast](https://www.raycast.com/) is a launcher for macOS that lets you:

- Open apps, files, and websites with quick commands
- Run scripts with arguments and dynamic output
- Browse and trigger extensions (e.g. GitHub, Jira, Linear, Notion)
- Create custom commands with keyboard shortcuts

This repo is **not** an official Raycast extension, but a **collection of my personal tools and configuration** that plug into Raycast.

---

## 📂 Repository Structure

Here’s how this repository is organized:

```text
.
├── README.md                           # You are here
└── commands/                           # Raycast Script Commands
    ├── apps/                           # App-specific integrations
    │   ├── Message/                    # Copy verification codes from Messages
    │   ├── chatgpt/                    # Open ChatGPT in Safari
    │   ├── claude/                     # Submit prompts to Claude via Chrome
    │   ├── devutils/                   # DevUtils.app integrations (JWT, JSON, YAML…)
    │   ├── dictionary/                 # Look up selected text in Dictionary
    │   ├── evernote/                   # Create Evernote notes from clipboard
    │   ├── notes/                      # Apple Notes integrations
    │   ├── things/                     # Things 3 to-do management
    │   └── wikipedia/                  # Wikipedia search
    ├── conversions/                    # Clipboard transformation utilities
    │   ├── clipboard-to-markdown.js
    │   ├── inputs-to-markdown-link.sh
    │   ├── json-prettify.sh            # Prettify JSON from clipboard
    │   ├── rich-text-clipboard-to-markdown.sh
    │   └── url-encode.sh               # URL-encode clipboard content
    ├── developer-utils/                # Developer productivity tools
    │   ├── base64-decode.sh            # Base64-decode clipboard content
    │   ├── base64-encode.sh            # Base64-encode clipboard content
    │   ├── create-image-from-code.sh
    │   ├── generate-uuid.sh            # Generate a random UUID
    │   ├── run-bash-command.sh
    │   ├── search-script-command.sh
    │   ├── unix-timestamp.sh           # Get or convert Unix timestamps
    │   └── wayback-machine-save.sh
    ├── navigation/                     # Finder & editor navigation
    │   ├── open-finder-from-terminal.applescript
    │   └── open-in-vscode.applescript  # Open current Finder dir in VS Code
    └── web-searches/                   # Quick web searches
        ├── mozilla-developer-network.sh
        ├── search-github.sh            # Search GitHub repositories
        ├── search-nodejs-docs.sh       # Search Node.js API docs
        ├── search-npm.sh               # Search npm packages
        ├── search-python3-docs.sh
        ├── search-rust-docs.sh
        ├── search-script-command-marketplace.sh
        └── search-stackoverflow.sh     # Search Stack Overflow
```
