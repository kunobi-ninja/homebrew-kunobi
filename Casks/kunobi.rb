cask "kunobi" do
  version "0.1.0-beta.20"
  sha256 "d724e18ced012757bab0351c9ef6e9749eaf56923c6a64f2bdbdaeb984f56e73"

  url "https://r2.kunobi.ninja/v#{version}/Kunobi_#{version}_darwin_aarch64.dmg"
  name "Kunobi"
  desc "Kubernetes dashboard and management tool"
  homepage "https://kunobi.ninja"

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
