class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.59.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "46af0f54fc4777704c568af3b887b237875d88a3c4c7f52cbf34b02891b6853f"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.59.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "1c6feb7aaac3c88ffac325cb96dbe9dd72245d3bdff40524394de907b379679b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.59.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8cc44d28e8e7e364ed6cd96914dc4728c96be467983742e0d73cdf61051ffa2"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.59.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4f266c724c2330d49390017b5d96f54dc8357cb3f2f72d92c65dd278aff301d"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
