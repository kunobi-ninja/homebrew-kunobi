class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "1093f8e4aa11022b2d3bc87149653c4017035240c61ef15013318a4efa28bd2c"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "c141e3859b3ebc1da8a62ab1681411529c335189d3a8cbfa517650b17c0a12b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "da2d2e6f0d20956be5227c9da044c5c7f2bb03a8fad07f5983bf3ae816f9f5ef"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9ad3a3fbfa8d230410b414c89ae7bde6be0dc6c862c4c19711ebc8217457894b"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
