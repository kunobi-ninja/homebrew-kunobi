class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "db13a457207bfaa7367c0fa964cf2a317aa2f962e4757b4a9dda63b8a2195e36"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "221f212ac879d2540ecdb18a0d5e1ca9b126c7057c1307531cf91f5114cd5064"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ddb13fc2f9a9bf4aeac3b9112495c37f30499d1f5df83d5e26bab69b5badc265"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "25ac2aa05400114b728058afde5ed09ae44657377160b58a5630c3cc2066c62d"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
