class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.58.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "3200a079cea7cda240e0af981589ae590b6af89b3796ac6b013f94f8ee504f96"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.58.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "89781bff59941b61240ae260a9af409d45ea8f693d66ad406968a1c3b3249f73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.58.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00336795765d498cd35dcd4cf4646f1773a8a7ef124b04710dd244deb125516e"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.58.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5ee87da7036c532ae5b91d4b3ea9f21faa223d43a239aa6bd241e8e04c650508"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
