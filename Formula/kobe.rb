class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.43.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "21a45487ee6844db4568aa8920293e2e43f029cdcf6a4d62e8d9ac81961afc8a"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.43.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "22d55a7f810f5abc4d66d4e37717475f056d6ee9d38710114324158f6cf25810"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.43.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "713eb0a65dd2861e0d9ad229f603ccd706af2b98775d1ed5a56cfc711cf97482"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.43.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4150a4e396e1e7592603d3675cf4c094251de60586cf58236170e17351dda0f9"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
