class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.35.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "3106b56e1785a53b26ade2ea26ad7ab48bafec236fceb423e7ff8699144c9ab2"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.35.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "3b67126337b774517d36c5581d38230cdf7146ddfae8f3b24fe54f4895c27623"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.35.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9934c7bc4543739aa160dfcc8fc6cdcd1d4af72f9127b35cec4d4b65d32e2953"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.35.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "07a6e6b6209c535d3e38ee812c90bce6a9eb4d033573a0b2406f0201daa2ebdc"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
