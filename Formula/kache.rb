class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.24.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "8d868046b4ec81203627b18c16ad73c0de97cf906934718d437c79647879fbbb"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.24.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "381cff8f8e8773103e719b65c5a8de6f3533f35106d5ff00aec72e7cb00d3296"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.24.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d67c746a463f768c6b97f3d34e2c4b1fe76081a9765bd24c2adfa14bef334f05"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.24.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "486606a8c034eaf47ff4c38735190c83d3fec050e49baf6cd28c30fee544928f"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
