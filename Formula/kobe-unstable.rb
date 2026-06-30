class KobeUnstable < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning (unstable)"
  homepage "https://github.com/kunobi-ninja/kobe"
  version "0.32.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.32.0-rc.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "a66f88b984efb5205132a00b1b860094e0642656ac401acb38e299407a4e177e"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.32.0-rc.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "de0e3e754e73821fa678274b1c459a956a55660a1b26c69a073e18aa0e8583ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.32.0-rc.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "419abbf38ba09d9431b05b24e86f4c67a67c9720f4bb3e2bcfe7602526b9ab7f"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.32.0-rc.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c510b2bcd91c2ef335d5f9805ea5d8e699ab64f78b7639e8166c551a3199a4f3"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
