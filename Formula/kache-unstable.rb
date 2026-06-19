class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "0.7.0-rc.3"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.7.0-rc.3/kache-aarch64-apple-darwin.tar.gz"
      sha256 "b337bf24b5fed111ee882e38e45697de880d83ce65cdab9de69dd3266e18f0e3"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.7.0-rc.3/kache-x86_64-apple-darwin.tar.gz"
      sha256 "6dfcd66f758215c40b906f84ac04e0c29a661bda5d75483c4e549ed0fd1e0191"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system "#{bin}/kache", "--version"
  end
end
