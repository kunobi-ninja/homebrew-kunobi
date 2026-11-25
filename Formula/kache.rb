class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.3.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "be22d302c40238b3a75f9695ad18022e5a3ae328300c274a1386c46ba0e6b8d1"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.3.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "6fba60e6d43ccdf44a7304504289548816f7201c9e913fed06879111dd35ccbf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.3.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fdd3a658844ce57c391d23073d250e54a1fc164f291736c8d18775644438475f"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.3.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f1ff3f9faf5a9bb0e38501c5bfe9ab5b4a980834f1c835d09ad5b0fdf9b6ab9"
    end
  end

  def install
    bin.install "kache"
    bin.install "kache-engine" if (buildpath/"kache-engine").exist?
    bin.install "kache-clang-cl" if (buildpath/"kache-clang-cl").exist?
    bin.install "kache-cl" if (buildpath/"kache-cl").exist?
  end

  test do
    system bin/"kache", "--version"
  end
end
