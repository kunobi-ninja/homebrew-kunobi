class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.10.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "95dc669c5c8b8d5b21112b230849fca5945cc59fd525f31eb79abd9a519b1d87"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.10.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "0f2b37b0c465ddccbb103f0b8da2350265aa5529a4db0ecb75d69bb637aafd45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.10.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d91090996d9a5af9f348f661dc12ff2dbd4e641016a8f49180a06211a0ae2417"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.10.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f78f2897de2a5e40c1ba9cfa983deb8a17ff2d843d13f067ba3fcfa240529fc"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
