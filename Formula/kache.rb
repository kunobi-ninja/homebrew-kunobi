class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.22.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "594836372cabd4ad6a73888fb41896af5c93f16deea8c1b05c04c06aa9f0a102"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.22.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "db8b8b28961fbc024740835a23fbef6880992795249d049997c57b870c59aaf4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.22.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c95ce19f5e1277f49fdb763f4e89594f2fa16aad8e40f85924807bc9b37f977"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.22.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e3066c7e2f2792cf4a365d2b3ae9f5077a8cd20d21639b942289b226e64928a"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
