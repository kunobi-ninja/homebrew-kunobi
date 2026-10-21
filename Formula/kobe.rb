class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.61.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "516569f4a1034348af9cacf3de4f913f090c1fd76a30c7df1f87aa8a2a816706"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.61.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "f2cac3abae4ab0676fbcf3aba733641668646a029d4a7bd65c6c1fe4422a3e5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.61.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c31d3f4307b3c9b67b08d7841af6cd206502d375389a57c610406f6f64b13747"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.61.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5fd6b4430023d5809695f668470443561dcf5c8f03241819d775c2d0b117387b"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
