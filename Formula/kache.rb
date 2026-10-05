class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.0.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "6d1be0079d0689a85fa04b7fed7eaa94f7e08259cafb8bd361a5c25c4c98c4a3"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.0.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "ae0792b17e1c5f2438b39be888896c20aaf006bef5959c44fa3bc5bc66d93b5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.0.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "88abd848be7d300d4e30b8510ebdc45990dae3f96b6591e3498209639cf34701"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.0.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "756e9701a6afb8354fd8b1d76164e13272d320354d84f01197e57d8a3b4be397"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
