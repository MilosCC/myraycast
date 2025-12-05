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
  - Commands I rely on daily
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
├─ README.md                # You are here
├─ raycast-settings/        # Exported settings and preferences
│  ├─ snippets.json         # Example: saved text snippets
│  ├─ quicklinks.json       # Example: saved quicklinks
│  ├─ extensions.json       # Example: list of installed/favorite extensions
│  └─ ...
├─ scripts/                 # Script Commands used in Raycast
│  ├─ shell/
│  │  └─ ...
│  ├─ javascript/
│  │  └─ ...
│  └─ python/
│     └─ ...
├─ extensions/              # Custom Raycast extensions
│  ├─ my-custom-extension-1/
│  └─ my-custom-extension-2/
├─ config-examples/         # Notes & setup guides
│  ├─ keybindings.md
│  └─ raycast-setup-notes.md
└─ LICENSE                  # Optional: license for your scripts & extensions
