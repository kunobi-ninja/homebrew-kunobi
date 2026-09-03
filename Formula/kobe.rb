class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.42.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "2934202d6b9f7fc67af95860602d57be9b8f175d12df92b999ad478f160f4f6a"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.42.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "fcc446991baed1c9560666fbdba6c3e4a041048c3b6b5158de5cf35b9306555d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.42.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "74654fe5d092038095f9997e45cc0914c0769f2026689c2c89d8599d6173bb06"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.42.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2659f38dce18fece8ab684b66c69e9165b97066dfc2c0fb65d1c41b54d1a5b08"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
