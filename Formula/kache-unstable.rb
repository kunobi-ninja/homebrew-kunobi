class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "0.11.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.11.0-rc.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "a54fd31ddbb46c079bae1b2503f5849ec34b173612639dda588ee669e9cbe55f"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.11.0-rc.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "113091a92155f866f78087dc06393a7c8e73a7a57568c19580aade55d4887f5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.11.0-rc.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d565f707d62ba977c898e44d985fdf0b3ed52972b6ef444e90288caf3bde93b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.11.0-rc.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "242c9d947aceee7fcc6b64e489b19a85f14d846d48e123e3af49b274bc150a58"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
