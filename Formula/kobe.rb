class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.1/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "de7b4ba92822f2b8598a119f7a2a284dd1990d7dfba3596d53779278e7bb6c74"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.1/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "6cff8a49c0c63fd61fee703a8afe3186a24b8973bf3db71e519f28157ddf0403"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.1/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d5ae2fe5fc3f37fb138cae2f999e3e5a7457210078f66d4aec870331b4e1ce35"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.1/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06f897d490feb4aedfd388312dd1b4d37f520da7fff5e7780f8e2d018c690f83"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
