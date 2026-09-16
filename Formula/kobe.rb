class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.47.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "9dea2a86e8134537b6de05a76396b5d977776696f9f4f3218b8194452f28ff5b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.47.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "ccfec363190ba39c3dc2b26e6fe57240fb7df4063e10c8ecb82ac8633e0ff61e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.47.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d2597ec6362066ce6a6fba5c2d94f7fcb3403a341c3bd85b996849d91866b174"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.47.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ee204d12e485bb66b3387e16ebb6775f725f29405124aa7d84a60c95152f4e4a"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
