class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.6.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "217e0744e76567ebdf031ffac9960903444e1b6acd13390e3c0d89b2cd4cb98f"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.6.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "5f6208bf7dfb7d52603f2f02f60118128ec6f08b781cf6f7d799ac6694dc407d"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system "#{bin}/kache", "--version"
  end
end
