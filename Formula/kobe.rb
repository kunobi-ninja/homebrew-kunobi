class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "507e32f44a780497d5d53a60d1ce7324ac0fd4aed773663fb3a623b87828e27b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "e25b3c29463e2d813f9d6ea9f9a44f5128ae7b3f88e33e0a1e2cc7aed0314427"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aafe49218e21aaa4b7218c1da3b7ddbd3a95b66873d82e9e781039913589949c"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "030a170aaef6f7776483d84f5c0780f2b9873f64e0f460d0cb924774fe0ebd70"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
