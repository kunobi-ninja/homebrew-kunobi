class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.19.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "8dcdaa95f3678b00696ca4742d8ad67c1f00d9baa7d142cbf9337b3f3ecb03b7"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.19.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "162646f94403c2a2e30dc3357b9ba97acbc788a297634cd7559beb33d83c0d4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.19.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cf9880200d28ca8b2cc33b5227b9cc26094c47c0927f7791734c02ba1a5cd6ac"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.19.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64d8e10abc1e916859ce5bf2937887df15933e1b65e66a1efe7dc769bcaa7798"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
