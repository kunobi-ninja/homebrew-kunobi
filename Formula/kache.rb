class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.26.3/kache-aarch64-apple-darwin.tar.gz"
      sha256 "c51e7c0e3d5e6bf4a614c8e2287553e602d03e98b71616ddecb2066856fea647"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.26.3/kache-x86_64-apple-darwin.tar.gz"
      sha256 "ee4268d473f3c027f12497c6eddd20834cf9951abb417729c9a672a2d7588815"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.26.3/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff11a4ffe22fadf0b8b1982fb767a1c127496ce492d04134b86ec81ab4fbb1ad"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.26.3/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dcd5e578a74079a288622ac13243f21d4f2861d2cb5fd9f35ba8e6ba71afbd32"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
