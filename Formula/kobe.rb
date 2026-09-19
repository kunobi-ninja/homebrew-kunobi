class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.52.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "d1c5009b3bf00984cfa416c94e7e13c8e3b18f795f2cd488bb6bba7450858a1d"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.52.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "c734ed225ce3b5d65f906a71d136c636ee886ef870b9804db373df5742b534f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.52.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e743eb22f5cbbf7ffe019a0301d63c71b8ea39cd2ff0a1fe76d6a100656fbca9"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.52.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5439e71fe497aa6aeaff06ff2b849a3e2896567ab9c17e778e0e3002df966e35"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
