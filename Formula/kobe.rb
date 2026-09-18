class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.50.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "1b99bcf843696592800b95a13da320f5cfc0d398640f034c53d7df6e32c63944"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.50.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "a16f57531faf0cb38468afaffd0d63203d1f0160a0230ca49c762abdb4cc35c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.50.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "db5e24a6403751ec49c040eb2535eaf06f91aed9996aadb44f95208ea623df26"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.50.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5891bd9fd22fae6e4f812bb1b2df9364ec4a4813dac0bf1989f61ff7be102a8c"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
