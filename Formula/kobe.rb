class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.46.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "eafcf0b26fbeeda502ec9af59f8fee37b4d55e4ceeec34519fe3585582092616"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.46.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "4eb3a42a0a8f1dd03f751d310b0eb9a522d80d79a66f6eeb9b6f5cac84b61736"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.46.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3b6dc030220e62ca44922def0125d8e8a9b8a88405623cb5d602b4f3dc8557e"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.46.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01f3f686878739301ed7751bbca6d16baf190db5d282a8c1bd2ba415fe015758"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
