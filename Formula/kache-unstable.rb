class KacheUnstable < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more (unstable)"
  homepage "https://github.com/kunobi-ninja/kache"
  version "0.15.0-rc.2"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0-rc.2/kache-aarch64-apple-darwin.tar.gz"
      sha256 "0bd89983b7cd68dae6427b46bc7b0be488e77dea951a153057133970ae4523fc"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0-rc.2/kache-x86_64-apple-darwin.tar.gz"
      sha256 "0ce103c856a6f36b96ea9283cc6fc21757f73991dcfdff6858743dbb775268e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0-rc.2/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d249b92677949695189960c4d23c552ceaeb075b0c2d8e29f434e02d5a45330d"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.15.0-rc.2/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "949206d47f5f72a06b9fb0d980e89f94d0b73ac31589b26721068510bfd103bb"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
