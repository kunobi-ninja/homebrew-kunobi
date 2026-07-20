class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.34.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "a88aa0d348cb200b854eb18a5ffb51c7251d7456f2fec944064dde4744f09407"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.34.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "a1f746921bdb934d4470c3a8c20265812a69c265051fb315db3c6cdd542ffff9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.34.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77dd6d89946499f9c88ae52289d6592e045b0019a37926570be1972d69c72715"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.34.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6dbd1aac72fceb7cd8532e9dfed90d9310e6346a201f5fc74f71e5bf8043389c"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
