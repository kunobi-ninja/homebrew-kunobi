cask "kunobi-unstable" do
  version "2.0.0-rc.9"
  sha256 "2c38e3a1be647c1bcf6aef79bd34a864917198e93122370e4568a3530c4af50a"

  url "https://r2.kunobi.ninja/v#{version}/Kunobi_#{version}_darwin_aarch64.dmg?utm_source=brew"
  name "Kunobi (Unstable)"
  desc "Kubernetes dashboard and management tool — unstable channel (RC, beta, alpha)"
  homepage "https://kunobi.ninja"

  # Stable and unstable install the same Kunobi.app bundle (ninja.kunobi.desktop).
  # Users pick a channel; they cannot have both installed at once.
  conflicts_with cask: "kunobi-ninja/kunobi/kunobi"

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
