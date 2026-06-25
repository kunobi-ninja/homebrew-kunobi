class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "0.8.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.8.0-rc.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "9a532aefa095a56748bcb2e542bc6fbebdb10cd5b8494e5796dd58d52f4b28cb"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.8.0-rc.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "e86f87cb83ce966dcafce0983d88393809a58252c4aa8c2e4de291f1c5792d46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.8.0-rc.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3a33f4031cd67f7949f809e0e6b135882823e7f601816f674eaf200ff44daaf"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.8.0-rc.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0071e2a453fc23b7e9d89bf4ae976e371859e0c67e2944339dbb941ca6e94489"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
