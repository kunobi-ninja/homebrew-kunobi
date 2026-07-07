class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.9.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "7f4c78e6b3e19118f23765b9d7b4d32820243784b4c1cb69f1b88546814f1b9b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.9.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "0fcb374cff7f56a3236c91a8a1b0faaf66a30820c7fae2d39df6beee36418001"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.9.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0432d4ead0796939f1106f30f106c2dfe42a615e6e0decee2126289f966c577"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.9.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "962c64e9f77d5f0932482f6af87c24e6b34b1261573bf7e5c3092983e01e59d5"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
