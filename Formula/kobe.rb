class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.45.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "aada7f3872231072cad75dd396b96d1b050e25a2a62e827dc04dde2bca0fa8e9"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.45.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "03841cf47ecd56446ee1041360224ed462f76784d614e5609c5e8b6744564033"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.45.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "961b9d423abdd505c6466625aae4b1b0e94ce7f2f578f1790f4f1451776af764"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.45.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cc770a6f4effbd524e2b54904297a95c0959bfa940e35c436020e473a357c7e"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
