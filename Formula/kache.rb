class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "9323603b104dece51f5ce6d7708831ec4332973d454444c797d3c1283f214317"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "307662bfbe425c3e0743b3b2cd80228ab1f0c72b66202fb538b6445870d08f7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82c161f4f5e5ca73fd6af0e0e180be348ba3b23c328c1df9ad0c499ef51a59df"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c4f9fbb6fdd6e4d42208adee029c98dbbaae5984672956e568e059eee5cdb89"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
