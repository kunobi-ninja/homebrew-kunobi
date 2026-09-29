class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.60.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "18854283883032d2d2aa4831070d30e0d9a951b73eb4e223940360aa0628ea9b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.60.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "ff013534aec0bb028183856f08d34ebbac0ee9ae308faa05a5868dd9984f7d03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.60.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d45a5a7da2ff656c8755a46eefada4621e3d169d8e03576402dded9837eb1c6c"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.60.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d6fc86852051c6a21aa70219c798b9183e1948cf96a0fb968477cfafb7a25ef"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
