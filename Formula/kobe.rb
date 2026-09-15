class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.45.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "03155b173eabaa69ed288d021bdc377b90042f3150affe52ea5d3c241fdd14c8"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.45.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "5b263c78d09493df3083e5c311111a322db0c89461f10a00d79e5d39b22d8d27"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.45.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f9481d475f37c418e4f5086042997a6c2a4f7c67075d5a343e71ba2bad35356d"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.45.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e19fa52a70d8ff8c49ce368851b3d8938232450a5460a68df36e12e880a8ea3"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
