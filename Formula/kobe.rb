class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.61.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "af9f3bca211ca89dc680509f1e84e86d5c1fe0302df492360fcf5a1176b7eb5f"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.61.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "165cbf464bcb48782803ba51c55d356241c402741c40d228d038947e34daa4ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.61.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4217563a8922a55816c411bf67d324710d87e885d88cfe7efc9cbe601ae1d41"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.61.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5828739b250bdb24e1c42052df241f0f8a80a43baded8c8c70e546b56a34534c"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
