# AGENTS.md

## Purpose

This repo tracks everything needed after a fresh macOS Tahoe reinstall.

## Structure

- **260209-TODO.md** — Master checklist of post-reinstall tasks (day-prefixed). Items are marked `[x]` when done and `[ ]` when pending.
- **notes/** — Step-by-step guides for individual tasks. One `.md` file per topic (e.g. `install-homebrew.md`).
- **notes/applications.md** — Central list of apps to install. Prefer `brew install` where possible.
- **changelog/** — Day-stamped logs of changes made (e.g. `260209-changelog.md`).
- **vs-code/** — Backup copies of VS Code Insiders settings and keybindings.
- **justfile** — Automation recipes for common setup tasks. Run `just` to list all recipes.

## Workflow

1. Tasks live in `260209-TODO.md` under **Done** or **To Do**.
2. When the user asks how to do something, create a guide in `notes/` and link or reference it.
3. When the user completes a task, move it from **To Do** to **Done** (mark `[x]`).
4. Keep notes concise and copy-pasteable — prefer terminal commands in fenced code blocks.
5. Prefer `brew install` (or `brew install --cask` for GUI apps) for all installs.
