class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.18.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "48decca430d16cb84a9cd055f7a352e35b3d8d18bace646be8eda734f516ea74"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.18.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "c96eef46bec2999d8c7393e04452926d2b3f66bebef4ff485b115c6e8fafa363"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.18.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a895ca560e17cdbf00c596a67c6af54baa907a95fac4d6cd04adb66268d7434"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.18.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2209e1e4de2c49a3a732a6ba86ad9ad4502c5cdc139b53723aa1e6c33efd8662"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
