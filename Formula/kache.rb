class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.1.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "e5f59b85c30d0fcc2d2743af7626774b39680fcb064243887bed4377e725c611"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.1.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "7f5b1d1dc8cf5eb60786ead7d6a0709c87adf1c6efcf6028c3b9758988f59af5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.1.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c2e82f42092123a937004aa1a3b5efa766c39b071eedce2de9e9b51fbe91b08"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.1.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2ef097121b87ed7a24f9b40fbf5d3799837b4c2ac75391d2264ea5cc6c38b3d7"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
