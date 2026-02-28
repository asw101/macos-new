# VS Code Insiders Setup

## CLI Setup

The VS Code Insiders app bundle includes a `code` binary. Symlink it onto your PATH so you can open files/folders from the terminal:

```bash
just symlink-code
```

Or manually:

```bash
sudo ln -sf "/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin/code" /usr/local/bin/code
```

> **Note:** The binary inside the Insiders bundle is called `code`, not `code-insiders`.

## Extensions

Install via the command palette or CLI:

```bash
code-insiders --install-extension nefrob.vscode-just
```

| Extension | ID | Purpose |
|-----------|----|---------|
| vscode-just | `nefrob.vscode-just` | Justfile syntax highlighting |

## Settings & Keybindings

Backup copies are stored in `vs-code/`:

- `vs-code/settings.json`
- `vs-code/keybindings.json`

To restore:

```bash
cp vs-code/settings.json ~/Library/Application\ Support/Code\ -\ Insiders/User/settings.json
cp vs-code/keybindings.json ~/Library/Application\ Support/Code\ -\ Insiders/User/keybindings.json
```
