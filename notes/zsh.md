# Zsh Configuration

## Minimal prompt

The default macOS zsh prompt is verbose (`user@hostname dir %`). Set a minimal `$ ` prompt:

```bash
echo "export PROMPT='\$ '" >> ~/.zshrc && source ~/.zshrc
```

## Previous .zshrc (from old volume)

For reference, the old config from `/Volumes/Main - Data/Users/user/.zshrc`:

```bash
export PATH="$PATH:$HOME/go/bin:$HOME/nvim/bin"
export PROMPT='$ '
#eval "$(starship init zsh)"
alias vim="nvim"
alias nv='nvim'
alias lg='lazygit'
alias code='code-insiders'

alias rec="asciinema"
```

## Restored so far

- [x] `export PROMPT='$ '`
