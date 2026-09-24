class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.56.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "6e08335a768510632f2b8d79778faa903137ebd109a7b637ece9593a4039dee2"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.56.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "d87c2ba3b6a02044c207a5570fa85997e647e717099670cfcf722ebc13da62db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.56.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd784bb46d66738ff257b8da2b51923ee805759e7aacd9ebd14fc8f61588e749"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.56.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a4011e39ebf3881a9deca7c9511144c888aec40236b30ba6214484767df00a40"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
