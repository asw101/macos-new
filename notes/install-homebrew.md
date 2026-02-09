# Install Homebrew

Homebrew is the package manager for macOS. Run this in Terminal:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

> **Why `/bin/bash`?** The install script is written in Bash and uses Bash-specific syntax. Per the [official docs](https://docs.brew.sh/Installation), `zsh`, `fish`, `tcsh` and `csh` will not work. This only runs bash for the installer — your default shell stays zsh.

After installation, follow the instructions printed in the terminal to add Homebrew to your PATH. Typically:

```sh
echo >> ~/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Verify it works:

```sh
brew --version
```
