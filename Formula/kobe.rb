class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "f8e8c0ebcea53bdc43240ccd308df324dc47f495fe3a5761680bdbcf5e926f64"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "1c8942a88cd4c2f59fe3fa0e18a975d7693160593a369340ae846b0cd46f40af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cfa10b0eaa751f8896de708a25232bdbd2cebbe9f5fcecaea57df3fc34f3eaf6"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.40.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a6fe2ce8dde8964e10fd382aa4adda4b3b6ba9e65fe4a1e0d967642fa052ccc7"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
