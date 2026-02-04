# Homebrew Tap for Kunobi

[Kunobi](https://kunobi.ninja) is a Kubernetes dashboard and management tool.

## Installation

```bash
brew tap zondax/kunobi
brew install --cask kunobi
```

## Requirements

- **macOS on Apple Silicon (M1/M2/M3/M4)**
- Intel Macs are not supported (no x86_64 build available)

## Auto-Updates

Kunobi has a built-in auto-updater that checks for new versions every 15 minutes.
You don't need to run `brew upgrade` — the app will notify you when updates are available.

## Uninstallation

```bash
brew uninstall --cask kunobi
```

To also remove application data:

```bash
brew uninstall --cask --zap kunobi
```

## Links

- [Kunobi Website](https://kunobi.ninja)
- [GitHub Repository](https://github.com/zondax/kunobi-frontend)
- [Release Notes](https://kunobi.ninja/changelog)
