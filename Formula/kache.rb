class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "65059d4190dbf2c959ab3e01d7a3147ebbc7c64d3f3fa81d1fdd596e2cd521a5"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "3285aff380e69d6c1f1141c3a2d97a6d456e0397c268cdb71b6c31e79af37c3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5380a5a9b215c675ea2b3de8e814aa0b2ae22db407a1d73e81c6629225fdd78"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dfe13129bb92a5656b2fb91ea06dac08f46164d488195db42d15562d6726dce6"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
