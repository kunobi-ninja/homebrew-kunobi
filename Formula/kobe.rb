class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.33.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "d080e6a90bb3791ea112f3ad9430d06e9f24b0710702c8ee2f860b55ae86706b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.33.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "cf728a5020340875756a4143256abb36785194252b969b34e5c5fc875c74c9db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.33.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "066d127962a2fd8b10005bf6b7d33e37d98aa0ada2698304ce50ba089a3d6048"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.33.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e806ab49f704c3076bb215fbb31bbf6f0a5baf40cb71b50036e7b2f8a8dd407"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
