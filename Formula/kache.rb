class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.2/kache-aarch64-apple-darwin.tar.gz"
      sha256 "69292fe742f054c863e9d3f3bced2a8e5c46ee97c9bb6742432cc75dd82c39b3"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.2/kache-x86_64-apple-darwin.tar.gz"
      sha256 "e3e45224bda05159952061ff4156140e090088b13b5b226d9c589d5d9b6ed317"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.2/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2892fd7d6243ec791879c5538691ddc501934ae8a70f5bdf497567eafcce1d39"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.2/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8cc4a3eb1621268732c030b3c74bbf3066fae905e4ed0f27e32aeca836b3e95a"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
