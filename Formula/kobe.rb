class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.54.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "d8bb3aecbc9fe7e8bb0d3115f53123db71a2400f42bd27d786ccf156335b5a08"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.54.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "62daf239d4345650833883534266c364abc6bffdf66b0a680ab4c96ce274aa5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.54.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "780b66e45e63516ae7c5d779770765035bdd65134e87067a1aec3c9b8b22ef20"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.54.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aca20ee6fbc34142476caf6d34520530cc913c1a2d37fe7432c4b3035bc415d3"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
