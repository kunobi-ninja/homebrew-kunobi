class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.51.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "64f7ba62c55c38581dcdbb15ee6332dc8e05045baee717999c97c29bf9d75eda"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.51.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "c30766c326fc1123840f80972e6e019d5b0ba664fdac85f8313bbb7746dc8e34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.51.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "60ecfffbc28a20391ea96c1f5305a6375705708df26476952fe6324d0bd69e2b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.51.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13395be4741d971d1d6713adb2841bdb4c5c00ee96fde7592cfdf8c8a6e01d33"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
