# Install just

[just](https://github.com/casey/just) is a command runner (like `make` but simpler).

## Install via Homebrew

```bash
brew install just
```

## Verify

```bash
just --version
```

## Usage

Create a `justfile` in your project root:

```just
default:
    echo "Hello from just"

build:
    cargo build --release

test:
    cargo test
```

Run recipes with:

```bash
just          # runs the default recipe
just build    # runs a specific recipe
```
