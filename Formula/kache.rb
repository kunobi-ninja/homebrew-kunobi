class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "c04d51c3daa9ec3735c1b79ac1ffdc6dc100ec156a3653f7a410501fcd60043a"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "24a1200668d8cc3ff6b2c5ed71b384272698a1bbdf8779cf6a9d102bd77ac491"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "97004178f455c1c56415ceda0f0068713f1ab4aa57603190014eee8e5ec79eb0"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.14.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06a4378544ee3352a8b1bc55ed3a54b066814285a470f8b55646888fa7c979f2"
    end
  end

  def install
    bin.install "kache"
  end

  test do
    system bin/"kache", "--version"
  end
end
