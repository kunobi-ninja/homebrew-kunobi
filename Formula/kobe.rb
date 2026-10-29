class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.62.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "a4e3d2881a0e9f40294d820a2cddeab9d6fed17d70bc4d9ed87e99f35c7f02bd"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.62.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "2e7158eb42b87ba41a2a7f4b7eaab335f9bf1a19968cb9c1d0a92654dd7b991a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.62.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "48b71cc654c28ed86ad53e5b19976244d0297b5721b8c6cd3430e22f9bcee10e"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.62.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6a3ceaace9e7b7de2198b5361ec439dc237a53fe5e14cceb6f2faa5e23dabf6f"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
