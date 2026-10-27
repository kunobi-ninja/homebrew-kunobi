class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "2.0.0-rc.2"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.2/kache-aarch64-apple-darwin.tar.gz"
      sha256 "89153c27729c011de338c48a6d3fc619fb9f8728bed6ab5a4f29433b3706fba2"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.2/kache-x86_64-apple-darwin.tar.gz"
      sha256 "a0eabd70ca3179a029c44002f1cb523104c9e75fa8a2657d674c7b9326bddcdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.2/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e3f72f4c88979db42cff2c35977a897e194becb0932a7507c9a9efd41757669"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.2/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5cce274c83096878b5d5db285711df8b549e3648be2151685ffdaa16dee5327"
    end
  end

  def install
    bin.install "kache"
    bin.install "kache-engine" if (buildpath/"kache-engine").exist?
  end

  test do
    system bin/"kache", "--version"
  end
end
