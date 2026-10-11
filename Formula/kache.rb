class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.1.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "108f3f37260f7fe0f24e541ca7202fcbd1540ed7af15fbf2b717252aac6ae53c"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.1.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "a28653454de27f6dd916a022de56a70bc5967e9e79f2206fc23a1cfe00d54773"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.1.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed756a576c4d8e6b5e32b5caf3ac1de2c020a67f671a8db7beb532162941cded"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.1.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b717f01afb686a7f77a79899db2b2800b54290168c38f1c592d4ad791a1113d7"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
