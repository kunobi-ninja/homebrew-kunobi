class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.43.2/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "0d0da9ebc1c8742de631cc5a890ce0517f2441709c073eb72dfa61736817472e"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.43.2/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "6da3a8301a0aa488bdc041da7d1be86a86c6addb5bb2a270d27470e0440ba02b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.43.2/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f7978dfb255dc741478d94f5cd0dc7e4f0dac3b27f5d6b6c567b2041355db750"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.43.2/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85d7635bf2b15a5ffb698dcf2a71314362d57248c85ae3075a00bafdee91c28d"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
