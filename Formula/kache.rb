class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.1/kache-aarch64-apple-darwin.tar.gz"
      sha256 "fb4b8209eeff6ba5c73758763368c2045e556c316e185cf294be280132bebdea"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.1/kache-x86_64-apple-darwin.tar.gz"
      sha256 "ce2cc46f3f2d043cf41432bdee3e74b7ec4aa7ba8d390f3ceedbba6a39cc7c91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.1/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fd80d47e78bdb478aac6c24239c0daeec7024913f5e69b457a1e84d87ff590db"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.1/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b2b86d592c5ffb53400218f450fc6b02008bd132827ae6cd133ec8859c9b753"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
