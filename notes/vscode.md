# VS Code Insiders Setup

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
