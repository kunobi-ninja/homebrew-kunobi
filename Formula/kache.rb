class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.17.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "8bb4140f6bbe2a69f75c7ac1c6d1746eab2215c58bdfb29931fb9d214823cb24"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.17.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "a4a4afbf47a5ff1831472d801b61cb77e267aa4ddff5a1c8d486ffee86a1b0b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.17.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bcb1319225419e9f9f6d465f81c9135b3eb541397eac1bad81adae7a9ca4821b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.17.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65ed65abbe4af2cd13c2e83052adccc26547d18a486f8de001e8996cadfc9bf7"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
