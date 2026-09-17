class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.23.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "c2d16f19ffcf369cacc562c6f4343a81e442feaad1b1abf0fd437b0b17c3e3f5"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.23.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "313560f5df5170e92612817a44c41f6ac1bfc13ec13ea2290f412aa3bd06cbf6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.23.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ade5ccdcba4aaae66b9896b8ff258071aff0296398a11dd880c6cc1240084af"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.23.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f79ed4e865ccaccdf1288ac51d0b2e1e0a9b316aaea60a871cecee556f382943"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
