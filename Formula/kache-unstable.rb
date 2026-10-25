class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "2.0.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "9847360211b943f7d8536fddc03ec8df0a22f164281622b5f3368af3deddb59b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "46f6614a61f98fbfc561bc0b6038ee0bdd1da2e5f4d845f16cffcc020a7a16b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72167aab72886b9656b60933371a5422a1c484212df3e4da5bc6d66e84f39d92"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2ed2e4228e6adb86382eb4d34a3c4e3305ddfc86963b05f73d9626f39d034bcd"
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
