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
- `commands/suggestions/` – script commands for submitting and viewing feedback/suggestions via GitHub Issues

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
├─ README.md                # You are here
├─ raycast-settings/        # Exported settings and preferences
│  ├─ snippets.json         # saved text snippets
│  ├─ quicklinks.json       # saved quicklinks
│  ├─ extensions.json       # list of installed/favorite extensions
│  └─ ...                   
├─ scripts/                 # Script Commands used in Raycast
│  ├─ shell/
│  │  └─ ...
│  ├─ javascript/
│  │  └─ ...
│  └─ python/
│     └─ ...
├─ extensions/              # Custom Raycast extensions
│  ├─ ...
│  └─ ...
├─ config                   # Notes & setup guides
│  ├─ keybindings.md
│  └─ raycast-setup-notes.md
└─ commands/
   └─ suggestions/          # Submit & view feedback via GitHub Issues
      ├─ submit-suggestion.sh
      └─ view-suggestions.sh
```

---

## 💡 Suggestions

Have an idea for improving this setup? Use the Raycast script commands in `commands/suggestions/` to share your feedback directly through GitHub Issues:

| Command | Description |
|---|---|
| **Submit Suggestion** | Opens a pre-filled GitHub new-issue form with your suggestion as the title |
| **View Suggestions** | Opens the GitHub issues list filtered by the `suggestion` label |

These commands make it easy to collect feedback without leaving Raycast.
