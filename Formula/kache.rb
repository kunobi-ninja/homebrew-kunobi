class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.3.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "66a078e0cb85f80a80a365b61a646791d6fe27f2000832194cadf06deddd6438"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.3.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "45e33861306133dfd970de7301ed1e560b2db18f999528e2416556064e3e3719"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.3.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c3f8dfeef93659eabbb00f7d58cdf882e33560ae61306bb784158ccfa7d02bd5"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.3.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60b6c507a1bfd396baba8670e0612feb5dda2c8460c8f02644328dde64359701"
    end
  end

  def install
    bin.install "kache"
    bin.install "kache-engine" if (buildpath/"kache-engine").exist?
    bin.install "kache-clang-cl" if (buildpath/"kache-clang-cl").exist?
    bin.install "kache-cl" if (buildpath/"kache-cl").exist?
  end

  test do
    system bin/"kache", "--version"
  end
end
