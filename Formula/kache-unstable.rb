class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "2.0.0-rc.3"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.3/kache-aarch64-apple-darwin.tar.gz"
      sha256 "fe3a044df484377052e2e6872a3a771e4d308c4b7309fc980b048fd28994f7d2"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.3/kache-x86_64-apple-darwin.tar.gz"
      sha256 "75da6c08c0f5cebb515fbf24939a37bf76151d01fd81c1245a6221d36c63d85a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.3/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "92d9072ff80187d9ced2eb5e7b3faa79238b14660b9c6d93ab903ad6200fea67"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0-rc.3/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e834d16c24df8daa550765b56809f34dd75f9a562fc8febe84bbb7167ae925c7"
    end
  end

  def install
    bin.install "kache"
    bin.install "kache-engine" if (buildpath/"kache-engine").exist?
  end

  test do
    system bin/"kache", "--version"
  end
end
