class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.23.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "050f68aabef044d71c896f27112d9554b64d85c58c92f29d1e54e73544ff55a7"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.23.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "317c54ca5bcaa52a9886c6c3961fb5517cc3694458cb03cde32589f44ba55e03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.23.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "49ff8ce883b6d28fc18b6f095e627054b0c4c5fcf0a841c75efa74da1cbc1801"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.23.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "918ca5a6f4f7ce820d28b85336770ae83eab1759fa712dfa95afb32de5f439e9"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
