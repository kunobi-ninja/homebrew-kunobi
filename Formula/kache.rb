class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.8.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "10619630f76dcbed2393ffcf839b7769ffefe6d73683a15a9ed17e0d3a05448a"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.8.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "5d2842f6adac986d6cf78f289648fead2128f7c96998c2d70c00f10f2af6db9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.8.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "14ee6dbf00b0a2b025204a00de00fe7c9617539a33a87c7ea054978b8d5d5bc9"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.8.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35ef8ba6ca171fcf899db880e0f97615325da841e84065675d19fb9fdab17c6f"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
