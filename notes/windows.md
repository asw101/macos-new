# Windows — WinGet Equivalents

Mapping of macOS Homebrew installs to WinGet packages on Windows.

## CLI Tools

| App | macOS (brew) | Windows (winget) |
|-----|-------------|-----------------|
| Git | `brew install git` | `winget install Git.Git` |
| GitHub CLI | `brew install gh` | `winget install GitHub.cli` |
| just | `brew install just` | `winget install Casey.Just` |

## GUI Apps

| App | macOS (brew) | Windows (winget) |
|-----|-------------|-----------------|
| 1Password | `brew install --cask 1password` | `winget install AgileBits.1Password` |
| ChatGPT | `brew install --cask chatgpt` | `winget install OpenAI.ChatGPT` |
| Docker Desktop | `brew install --cask docker` | `winget install Docker.DockerDesktop` |
| Microsoft Edge | `brew install --cask microsoft-edge` | Pre-installed on Windows |
| VS Code Insiders | `brew install --cask visual-studio-code@insiders` | `winget install Microsoft.VisualStudioCode.Insiders` |

## Coding Agents

| App | macOS (brew) | Windows (winget) |
|-----|-------------|-----------------|
| Claude Code | `brew install --cask claude-code` | `winget install Anthropic.ClaudeCode` |
| GitHub Copilot CLI | `brew install --cask copilot-cli@prerelease` | `winget install GitHub.CopilotCLI` |
| OpenAI Codex CLI | `brew install --cask codex` | `winget install OpenAI.CodexCLI` |

## macOS Only (no Windows equivalent)

| App | Reason |
|-----|--------|
| Ecamm Live | macOS-only streaming/recording app |
| MacWhisper | macOS-only transcription app |
| Rectangle | macOS window manager (Windows has built-in Snap Layouts) |
| Rogue Amoeba Audio Hijack | macOS-only audio routing/recording |
| Rogue Amoeba Fission | macOS-only audio editor |
| Rogue Amoeba Loopback | macOS-only virtual audio routing |
| Windows App | macOS client for Windows 365 / Azure Virtual Desktop (use the native desktop on Windows) |

## Not needed on Windows

| App | Reason |
|-----|--------|
| Rosetta 2 | Apple Silicon compatibility layer, N/A on Windows |
| Microsoft Edge | Pre-installed |
