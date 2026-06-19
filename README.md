# Homebrew Tap for Kunobi

This tap provides two packages:

- **[Kunobi](https://kunobi.ninja)** — a Kubernetes dashboard and management tool (desktop app, installed as a cask).
- **[kache](https://github.com/kunobi-ninja/kache)** — a content-addressed, zero-copy build cache for Rust, C/C++ and more (CLI, installed as a formula). Jump to [kache (CLI)](#kache-cli).

## Kunobi (desktop app)

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

## kache (CLI)

[kache](https://github.com/kunobi-ninja/kache) is a content-addressed, zero-copy build cache for Rust, C/C++ and more.

Two channels are available:

| Formula | Channel | When to use |
|---------|---------|-------------|
| `kache` | stable | Production releases — most users |
| `kache-unstable` | unstable | Pre-releases (RC, beta) — testers and early adopters |

The two formulae have different names, so both can be installed side by side.

```bash
brew tap kunobi-ninja/kunobi

# Stable
brew install kache

# Unstable (pre-releases)
brew install kache-unstable
```

### Requirements

- **macOS** on Apple Silicon (arm64) or Intel (x86_64).

### Upgrading

```bash
brew upgrade kache
```

### Uninstallation

```bash
brew uninstall kache              # or: brew uninstall kache-unstable
brew untap kunobi-ninja/kunobi    # removes the tap (also removes the Kunobi cask)
```

## Links

- [Kunobi Website](https://kunobi.ninja)
- [Kunobi GitHub Repository](https://github.com/zondax/kunobi-frontend)
- [Kunobi Release Notes](https://kunobi.ninja/changelog)
- [kache GitHub Repository](https://github.com/kunobi-ninja/kache)
- [kache Releases](https://github.com/kunobi-ninja/kache/releases)
