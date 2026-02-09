# macOS Tahoe post-reinstall automation

# list available recipes
default:
    @just --list

# authenticate with GitHub CLI
gh-login:
    gh auth login

# configure git name and email from GitHub profile (uses noreply email)
git-config:
    @echo "Configuring git from GitHub profile..."
    git config --global user.name "$(gh api user --jq '.name')"
    git config --global user.email "$(gh api user --jq '"\(.login)@users.noreply.github.com"')"
    git config --global core.ignorecase false
    @echo "Set user.name = $(git config --global user.name)"
    @echo "Set user.email = $(git config --global user.email)"

# authenticate with gh and configure git in one step
setup-git: gh-login git-config

# set minimal zsh prompt
setup-prompt:
    echo "export PROMPT='\$ '" >> ~/.zshrc && source ~/.zshrc

# clear all items from the Dock
clear-dock:
    defaults write com.apple.dock persistent-apps -array
    defaults write com.apple.dock persistent-others -array
    defaults write com.apple.dock show-recents -bool false
    killall Dock

# install CLI tools
install-cli:
    brew install git gh just

# install coding agents
install-agents:
    brew install claude-code codex
    gh extension install github/gh-copilot

# install GUI apps via brew cask
install-apps:
    brew install --cask 1password chatgpt docker rectangle
    brew install --cask audio-hijack fission loopback

# install everything (CLI + agents + apps)
install-all: install-cli install-agents install-apps
