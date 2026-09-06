class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.42.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "3b3ae3e53d1d8e85974067d51ae1d5f28ab14064880fdfc35bec874faa262a56"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.42.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "5e09994356dae7e45bb3db22aafef288df25b5b30eaa4aaf8bad5605542957bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.42.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6f59f7418e86189cacb2dcc95e0b85d2e7cfb7192ac54e0aed6af163bde3e97"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.42.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "265e6a74968010abce000dfc4e87236b3a8e698e82afdc5b08eb6649c4a1a415"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
