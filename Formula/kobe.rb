class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.57.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "d03bfbb83f3168a0d510b3112d15253fa1b834cf4a10eea6f2b113b18e38849b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.57.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "9475cd1b05ec767bdb99f08ac1b12292d7d50c792e08f69ba81077c43d790d72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.57.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d77769be607c5fe4e716d790eedbf3d55e3c7482dba50b6076930c02e7d2873"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.57.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2c3ef52f6ea5ebd400d6171322381bdc618514b4c70711ad1b9a716995a53a6e"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
