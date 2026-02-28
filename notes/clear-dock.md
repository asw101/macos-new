# Clear All Items from the Dock

## Remove all apps from the Dock

```bash
defaults write com.apple.dock persistent-apps -array
```

## Remove all recent/other items from the Dock

```bash
defaults write com.apple.dock persistent-others -array
```

## Restart the Dock to apply changes

```bash
killall Dock
```

## One-liner

```bash
defaults write com.apple.dock persistent-apps -array && \
defaults write com.apple.dock persistent-others -array && \
killall Dock
```

> The Dock will briefly disappear and reappear empty (only Finder and Trash remain since those can't be removed).

## Auto-hide the Dock

```bash
defaults write com.apple.dock autohide -bool true && killall Dock
```

## Disable "Show recent applications in Dock"

```bash
defaults write com.apple.dock show-recents -bool false && killall Dock
```
