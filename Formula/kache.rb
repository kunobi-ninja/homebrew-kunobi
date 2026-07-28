class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.12.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "a425cfc46792e0c0eec45cde87000709ef8bab99c7980353bc9c7f3ab702503c"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.12.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "7e3f6f6e4eb67a68ee4891e1808e6c30e13cc460d8a074a76379019f393eeef1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.12.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ddce83d02125aa028d85cdc27870d13f90d7d72a6b436c6813c3147bc1ea6f0"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.12.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eae89d07fbc3a8155e39f5b1a6b1880ace773a0c3f522772f1c04a35c3cf0245"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
