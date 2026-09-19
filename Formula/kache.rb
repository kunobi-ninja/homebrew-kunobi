class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.26.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "422c59f988245575e6258629c58e0fc8c6d57639734f57d1b04bb5f015a1acdc"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.26.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "86f7f7acb11ffc82db24d69b877eda382d6c0774b216a945f56bb4bbf59f5f74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.26.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d8d44fa1a8dc58dff96a7353f865efe969b0ccec4e5aeb9871ae2b0925fecbcf"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.26.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5ed08d728dee6507328018a49f0dc7c74713c1c88fe42a37e602661a3c4f0d8"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
