class KobeUnstable < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning (unstable)"
  homepage "https://github.com/kunobi-ninja/kobe"
  version "0.31.13"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.31.13/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "7843c2f626962ac9d63ad31f143c79e3ca6df0742e885d96eb26f214cb541397"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.31.13/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "5a0d58f2d0746df042dd6080bfb0058a3c114bef679924fa0096cefe5b366be2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.31.13/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e128b108e4ecc3070de82e4afec85c2ddfd91584b5cbb4ba5c642efc43b2abfa"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.31.13/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aea023d172538d94be4dc9ba8c7024f53dc7e51204c67593e828947f2d5e91c8"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
