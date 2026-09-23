class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.2/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "212de8dee1de771d2888fc2bf0d57ca6e8f8662adb086514834fd3f1c397fbb8"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.2/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "e10ebdf4436714c691f674ea0a1cb5e0634460b56ba7d01e9960dcef611a315e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.2/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd3154104045def16dff37a7378466fe642af1f4e74182f88f8834dff59084e2"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.2/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2595645989a4ea32c8e8f89f0c67adadddfe8a79db58bbb96af8f8c15f37625c"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
