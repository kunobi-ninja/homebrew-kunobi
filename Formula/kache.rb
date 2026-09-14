class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.21.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "19469430e4c7f1a8bcc561c28c15fd487d32b51ebc62c922d71ee7de21f060f0"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.21.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "5fd7b52ea71f3366e4c27801f952c5dfc74a91aa4ee6243f7ffd090768d637eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.21.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7c8b0e718b040f26c35a435eee1dbdf2ead42af8529b13be7cacc97f5bc8dec4"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.21.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6354bb76414be68f8f906206c87c1394e5b79fdebcb3a9d31e2254ddfadc2820"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
