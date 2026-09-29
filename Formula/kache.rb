class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.28.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "253096ab5972fe179b86301abbcfb5944bc9807e3fa3d1720b44b129b86fcbff"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.28.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "05180b56a4eb8e0600ee47682017a7a81fd4a7cc1e781d481654002af8b082a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.28.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2110805eb24afe9b408e5b9a1e3d0584b7fdd0b79fe8cbe548ab29fbaf50176"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.28.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68635a9f92ce5015a2c48c98b968d1b3707b6dbee0ca725e51d1671c9346f38f"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
