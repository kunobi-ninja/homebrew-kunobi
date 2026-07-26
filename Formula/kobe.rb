class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.37.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "add74277243fd7087b392518edd2f8f3567fe088ae2e71df0d1e9dc3d5a9cf2a"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.37.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "46344c42c1e5f43b9ba2d960d553f0cdea7c92096624476c81a2310c3ce5df36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.37.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f24ea8eb2bf2ca655c4b3799f5ee658ab058bb67db8917d7dcd8831344285e8"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.37.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aec191bd5b4457dea047abfa5fa799c81c95f5ec7fe0cdaad73ca5d4d47f547f"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
