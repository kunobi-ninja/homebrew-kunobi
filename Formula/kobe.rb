class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "d5e36ecf43f7a566d65fa090b8fa10ac8a5fb4db167814396c71f19ec23c814c"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "7d601bf0d6d771a6fd315c326f35a089a68308757b9bd89912b7edfe39c6f8c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df94ef737f28cf3c257cd269d609b60c3e53ea4954491b4a5a342c2ed6b162b0"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a322e750a6219a9842e87812141fad598ade4082e9cbb6f79a55c8bd79d4675f"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
