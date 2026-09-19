class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.53.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "1085e782f0bdeccd9486bf4f9b494ac99f7aee2e6cc0895b8544618fe594c072"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.53.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "9068a12cd70af35ab6d3b5deb285966adeb36eebfb810683398a6ab4daea1de0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.53.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d470d3a2299575bf58d2c565f0988502019f70e3d1aa5aaabf1ef9cd559393f"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.53.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61965888259073b30a311cab80eff6dd309023c77b293dc651b06ea4084f3c2d"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
