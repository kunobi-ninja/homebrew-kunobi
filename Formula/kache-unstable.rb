class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "0.9.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.9.0-rc.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "9e4947d6d2d01c08df234c32c4201cd3428ecf01baeea8f765441b2239e892b7"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.9.0-rc.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "e82d7b7faf58b942b7272436174114aaf32f014c53787cf5f34f7f04608b64eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.9.0-rc.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8dacdc5c43f88b6b3609d1e343f4ce17fce263264bfd13d77cc97c89671c1628"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.9.0-rc.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5060e62561183c5846bfe115982bcd69c10d04cff25cc0e1e47dd2ca800bb218"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
