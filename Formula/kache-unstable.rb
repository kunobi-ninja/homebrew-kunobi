class KacheUnstable < Formula
  desc "Content-addressed zero-copy Rust build cache (unstable channel)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.0.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.0.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system "#{bin}/kache", "--version"
  end
end
