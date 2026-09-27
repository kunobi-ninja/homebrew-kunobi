class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.27.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "2e8c3be48bec1804bce4c865be1ff0809a1fca3529c091edda04cccf757793cf"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.27.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "aa730c73f967b3c11d49c47d59f993fd8880fdc74340074e8fee70b819cc2dd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.27.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d55f4d1444d572b0b4cf95f438b67f1fa8e9fc809dfbb6b00558611fe9c3a398"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.27.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b3544f2404807a60106c170f2a65ed8581ff1b7743fc225a1cf7ba851b143c2"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
