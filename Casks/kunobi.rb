cask "kunobi" do
  version "1.3.0"
  sha256 "1b3478632c563ea3211b132ea98aa2d94512b4a8b8a1e5e00ef03ba25ad90457"

  url "https://r2.kunobi.ninja/v#{version}/Kunobi_#{version}_darwin_aarch64.dmg?utm_source=brew"
  name "Kunobi"
  desc "Kubernetes dashboard and management tool"
  homepage "https://kunobi.ninja"

  # Stable and unstable install the same Kunobi.app bundle (ninja.kunobi.desktop).
  # Users pick a channel; they cannot have both installed at once.
  conflicts_with cask: "kunobi-ninja/kunobi/kunobi-unstable"

  # Only Apple Silicon builds are available
  depends_on arch: :arm64

  # App has built-in auto-updater (Tauri checks every 15 min)
  # This tells Homebrew not to nag users about upgrades
  auto_updates true

  app "Kunobi.app"

  zap trash: [
    "~/Library/Application Support/ninja.kunobi.desktop",
    "~/Library/Caches/ninja.kunobi.desktop",
    "~/Library/Logs/ninja.kunobi.desktop",
    "~/Library/Preferences/ninja.kunobi.desktop.plist",
    "~/Library/Saved Application State/ninja.kunobi.desktop.savedState",
  ]
end