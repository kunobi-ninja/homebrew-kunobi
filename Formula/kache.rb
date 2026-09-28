class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.28.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "dcb7af37ab8884de23957b342552b42b5666922b4454081ef2bb175dda0310bc"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.28.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "2f0b33883ae8be5bc6b5e9e9329aa37a7e49c71a1ab950bb1c22e9324e119c1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.28.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9419d22722208ea22006498850aba508f4f502ce629a7b855cdc815f649e966e"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.28.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63ce67b2ef63497882cb6cd242ae61b721b883f3e70b4937ab9e2539d693a168"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
