class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.2/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "7848023853d910652f8be8749bd14b13beca758ee38941994d6c3f49c0e8dbfc"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.2/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "a6cf1f96fad379ea4f1dda9cab8dde09c99edb8665d753d249a1edb924dcd8f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.2/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "919e9813101a6b0bbcfd02224862e766ace115e83aec95772f5a9507efdd3f10"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.2/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc718a970e0850aee1554af7536d574d505487d116e45a46bb7f84d931e717c8"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
