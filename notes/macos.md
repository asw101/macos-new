# macOS System Settings

## Keyboard — Remap Modifier Keys

Swap Globe/Fn and Caps Lock, make Caps Lock act as Escape:

1. Open **System Settings** → **Keyboard** → **Keyboard Shortcuts…** → **Modifier Keys**
2. Set:
   - **Caps Lock (⇪) key** → Escape (⎋)
   - **Globe (🌐) key** → Caps Lock (⇪)

## Dock

- **System Settings** → **Desktop & Dock**
  - Disable "Show recent applications in Dock"

Or via CLI (see `notes/clear-dock.md`):

```bash
defaults write com.apple.dock show-recents -bool false && killall Dock
```

Auto-hide the Dock:

```bash
defaults write com.apple.dock autohide -bool true && killall Dock
```

Minimize windows into their application icon:

```bash
defaults write com.apple.dock minimize-to-application -bool true && killall Dock
```

## Text Input — Disable Auto-Correct & Smart Substitutions

Disable auto-correct, auto-capitalization, smart quotes, smart dashes, and auto-period:

```bash
just disable-autocorrect
```

Or manually via **System Settings → Keyboard → Text Input → Input Sources → Edit…** and uncheck all options.

Or via CLI:

```bash
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
```

## Trackpad

- **System Settings** → **Trackpad**
  - Enable Tap to Click
  - Adjust tracking speed

## Screenshots

Save screenshots to Downloads instead of Desktop:

```bash
defaults write com.apple.screencapture location ~/Downloads && killall SystemUIServer
```

## Finder

- **Finder** → **Settings** (⌘,)
  - Show file extensions
  - Set default view to list

## Rosetta 2

Required for Docker Desktop x86_64 emulation on Apple Silicon:

```bash
softwareupdate --install-rosetta --agree-to-license
```

Then enable in Docker Desktop → **Settings** → **General** → **Use Rosetta for x86_64/amd64 emulation on Apple Silicon**.
