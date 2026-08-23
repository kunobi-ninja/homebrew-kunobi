class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "0.15.0-rc.3"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0-rc.3/kache-aarch64-apple-darwin.tar.gz"
      sha256 "9291d177bd36771e1e39b4981c42a8298c1188d93eaec5b258cf83b71b65ae6e"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0-rc.3/kache-x86_64-apple-darwin.tar.gz"
      sha256 "7b7d2d9f5e126cb78a2c98f5ed971763ecbb510141a4b14b7d1a4522ad6b7dd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0-rc.3/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2c12b08b244c81b76dc4f61fd9e1bb387bc0fa0a1e9da01d6ee2fd25f4905c4a"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0-rc.3/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c415e9dd8d3a8d308574b9ee74b58aad727c6f3cbd929ca54ef869b534a412a3"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
