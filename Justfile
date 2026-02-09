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
    brew install --cask claude-code codex copilot-cli@prerelease

# install GUI apps via brew cask
install-apps:
    brew install --cask 1password chatgpt docker rectangle
    brew install --cask ecamm-live audio-hijack fission loopback

# install everything (CLI + agents + apps)
install-all: install-cli install-agents install-apps

# verify all expected tools and apps are installed
check:
    #!/usr/bin/env bash
    pass=0
    fail=0
    check() {
        if command -v "$1" &>/dev/null || [ -d "/Applications/$2" ]; then
            echo "  ✓ $1"
            ((pass++))
        else
            echo "  ✗ $1"
            ((fail++))
        fi
    }
    check_app() {
        if [ -d "/Applications/$1.app" ]; then
            echo "  ✓ $1"
            ((pass++))
        else
            echo "  ✗ $1"
            ((fail++))
        fi
    }
    echo "CLI Tools:"
    check git
    check gh
    check just
    echo ""
    echo "Coding Agents:"
    check claude
    check copilot
    check codex
    echo ""
    echo "GUI Apps:"
    check_app "1Password"
    check_app "ChatGPT"
    check_app "Docker"
    check_app "Rectangle"
    check_app "Ecamm Live"
    check_app "Audio Hijack"
    check_app "Fission"
    check_app "Loopback"
    check_app "Windows App"
    echo ""
    echo "Config:"
    if [ -n "$(git config --global user.name)" ]; then echo "  ✓ git user.name"; ((pass++)); else echo "  ✗ git user.name"; ((fail++)); fi
    if [ -n "$(git config --global user.email)" ]; then echo "  ✓ git user.email"; ((pass++)); else echo "  ✗ git user.email"; ((fail++)); fi
    if [ "$(git config --global core.ignorecase)" = "false" ]; then echo "  ✓ git core.ignorecase=false"; ((pass++)); else echo "  ✗ git core.ignorecase"; ((fail++)); fi
    echo ""
    echo "Result: $pass passed, $fail failed"
