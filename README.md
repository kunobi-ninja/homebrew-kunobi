# Homebrew Tap for Kunobi

[Kunobi](https://kunobi.ninja) is a Kubernetes dashboard and management tool.

## Installation

Two channels are available:

| Cask | Channel | When to use |
|------|---------|-------------|
| `kunobi` | stable | Production releases — most users |
| `kunobi-unstable` | unstable | Pre-releases (RC, beta, alpha) — testers and early adopters |

Both casks install the same `Kunobi.app` bundle (`ninja.kunobi.desktop`); they are mutually exclusive — pick one.

```bash
brew tap kunobi-ninja/kunobi

# Stable
brew install --cask kunobi

# Unstable (pre-releases)
brew install --cask kunobi-unstable
```

To switch channels, uninstall one and install the other:

```bash
brew uninstall --cask kunobi && brew install --cask kunobi-unstable
```

## Requirements

- **macOS on Apple Silicon (M1/M2/M3/M4)**
- Intel Macs are not supported (no x86_64 build available)

## Auto-Updates

Kunobi has a built-in auto-updater that checks for new versions every.
You don't need to run `brew upgrade` — the app will notify you when updates are available.

### Homebrew Upgrade Behavior

This cask has `auto_updates true`, which tells Homebrew "this app updates itself, don't include it in bulk upgrades."

**Without explicitly naming the cask:**
```bash
brew outdated --cask          # won't list kunobi
brew upgrade --cask           # won't upgrade kunobi (skips auto-updating apps)
```

**When you explicitly name it:**
```bash
brew upgrade kunobi           # upgrades anyway (you asked for it specifically)
brew upgrade --cask kunobi    # same behavior
```

**To see all outdated casks including auto-updating ones:**
```bash
brew outdated --cask --greedy
```

## Uninstallation

```bash
brew uninstall --cask kunobi
```

To also remove application data:

```bash
brew uninstall --cask --zap kunobi
```

To remoce tap:

```bash
brew untap kunobi-ninja/kunobi
```

## Links

- [Kunobi Website](https://kunobi.ninja)
- [GitHub Repository](https://github.com/zondax/kunobi-frontend)
- [Release Notes](https://kunobi.ninja/changelog)
