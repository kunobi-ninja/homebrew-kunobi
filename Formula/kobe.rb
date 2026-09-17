class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.49.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "e4f727554cc3bb90d50b49b933913a75bd5c657235a9e840f0a71949e24b990f"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.49.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "bf56023a014e644e09065f1798add6c19ca82ac66f5d6795b35ef75f93fef9e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.49.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bfbf6e41d025cd1d714540231c9d7e9cd73db5f43edcc61ec904f76eb45cb89d"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.49.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dec33b391cdbcb9446bf495259aa7ce2334da10786661e330e44e46383b330fa"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
