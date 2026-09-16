class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.48.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "c17e438d629f8baee935e9d6d0e9ad4c1c7686cb1afdce5f7199d132f29c3055"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.48.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "33a94482fc34d8268a14e6368cab8da398a220b664f6c7dae30c3a32794da5e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.48.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b1b1c00e144ebd1675233ec62bf88367c7b1c5046de8a499c3ad63486740cb6f"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.48.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2cbc63d0a2f20ea8e5cd08cd448d5c4c7380ea32ed3a3a45c7bce60f857bfd47"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
