class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.13.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "f3f4d7cfece20d251f8740dae224777d096a5ed2b1608b1cae996e98f6018a31"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.13.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "c1a51d039d834f6aadbac1a166b9544d5320b3ca8cb048520f45c7d67aac1bb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.13.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b61de3de6a9abb21a375fa9c6513d47bb8cf7391f4eeb24c5be2972738b83ce3"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.13.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30aeded4dc6e620c400aa3aaf7ab163dc95c703a0f3ddb4d0ba56c51f23f0bd0"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
