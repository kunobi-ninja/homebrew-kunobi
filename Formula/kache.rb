class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.2.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "8096492dc878796db6a79fef05f3e15ac8af450059c59db1f546eec00d81c3f5"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.2.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "cb76efd5c23023bff27cb2b7d787b139b18fd0c851dda84f45b5f71128c38b0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.2.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "99c74e9332a92e8f06d6fbdb077aff5365f364d5b5e6d69cf013fa616e887f22"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.2.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eeb6e72b9f55d0e9d61cae0789ffa8f3ab8c33bef166b7af655cc0806447ebac"
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
