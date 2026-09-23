class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.3/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "6918e8749c557986814c276d913bc604b08cd0c5d71956c55b9e676ef5569916"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.3/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "6955312457bb3fc98327db5d0c0b205f37936989d36127de0f33079379625e54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.3/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5352e0e2c9c44efcad056183cc57603d7aec2a3f629a2f7b97740787fe6cf0d7"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.55.3/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "45e927f228e1f421792b68c95731850068da1d93b71623c8a6b1e8b3b6f5fc02"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
