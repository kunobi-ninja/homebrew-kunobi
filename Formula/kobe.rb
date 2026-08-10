class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.38.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "f7c6d46ff7aa10133fe4b85126dc7eb24910adc88c9d27f7423fa76cfeb5e7ac"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.38.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "855427ca3393ebba79b1c5c1b3ce5c117014dfc9a7cc9c8af683dd08e16882ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.38.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6861845ea8140afe7ac3457af598ff71323a5a643aea40bfef90d88a10460768"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.38.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "428ef4daee0492864a8bc4759224f56d3ff06b84333a12a8e43b2969baeed9b2"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
