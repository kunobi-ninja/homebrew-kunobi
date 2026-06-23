class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.7.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "24c587abab18bf111cb8223bd62bbd0bf11f72fb9ee2d37eb1c81501a1f77e80"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.7.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "2e17441ab1afbd30d8b3734a395f4a32a619fcdec2b7f440cfe0a690fec54a2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.7.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c40cddffa331cb3d186f3aba86f0476e459897f8e4b8404e20d4d90c01889170"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.7.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1407d0f8afe8ea41f7bc7af194b3d16bf527ed99362d1bae6096b4fa1493686c"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
