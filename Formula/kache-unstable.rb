class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "0.7.0-rc.2"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.7.0-rc.2/kache-aarch64-apple-darwin.tar.gz"
      sha256 "ce6d158d76c1af0bff9303e851eb8adfb9b618a8b09a1787dbdf86dec438b5bc"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.7.0-rc.2/kache-x86_64-apple-darwin.tar.gz"
      sha256 "2efd401fd9f589966ad5ed2df28196e5d445b0b9029be03ba91f7d9ef1ed6bfd"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system "#{bin}/kache", "--version"
  end
end
