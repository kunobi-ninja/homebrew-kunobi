class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.50.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "d6490611da7d02efdef9eb9184be68567f20b45534233f9d10a80ac003cc91e8"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.50.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "f6d9fbcb5dd9042bca608cfe9d2522cd711f0aba6cb161f15864466d036b7f6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.50.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "33366091de1fec88fa86af230e874b6db35fb87e50c42213cecf6db96828b690"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.50.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e736e0ecff37487ed83be8275595c505fc2eae1791f6b5e6d4f91f1cb2e0a3ab"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
