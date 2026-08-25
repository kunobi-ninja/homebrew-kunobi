class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.16.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "6ad80d3bbb33d7db1715d5a919edbdf755dc19ca22fa83797c659147f1f9e229"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.16.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "fef8184980ba65e9c8eaddbac7da31a7f782d994d442e23cc0ec89f396d7e889"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.16.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6eabb67867022eecdbfffe43c16e75b5c5b561983742bda3c900a4cb4c50e4a7"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.16.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "caee657c662379475af2a0a7611ad32a6d053822036c1ec191bb8fd1c826d54b"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
