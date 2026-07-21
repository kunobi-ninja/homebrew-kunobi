class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.11.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "162b043bb7b5b7e58d3446ed7079234bd54f839d048aa4a41555607426981aab"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.11.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "09d7cf13f9437041c298b022b18e397d187c8c26f142454cd9aeaeb193c73171"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.11.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "19566ba48f7ce36c0a1d6f6dce88e59ce4f24a162e1af566f5b24573eb04e98b"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.11.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6bedd0a5d6c7cbc27937000b9911c2897485b658f12636fc786890cf4dc23975"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
