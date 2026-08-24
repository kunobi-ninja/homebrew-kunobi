class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "abfea79fcddad10aef742ead099e6349a0405e919dd6023d6402cc68a866705a"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "373788f65e41cbedc313612906da3fbe9a42656f8ed7be1e73145cd663cbee41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50e8cc75fdac50e304ee3e1827c06135cc758e3a0024190d8951a00c3779da31"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "21a6e50fff5eeab6a4c76a17af3878369d5d3cb57b38b85d7c8a5bcd8479d300"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
