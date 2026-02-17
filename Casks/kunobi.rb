cask "kunobi" do
  version "0.1.0-beta.22"
  sha256 "a1a866ce767285bc170a9f0997de7e9427ed0a2b4d793880b1e8a94e743b953a"

  url "https://r2.kunobi.ninja/v#{version}/Kunobi_#{version}_darwin_aarch64.dmg?utm_source=brew"
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