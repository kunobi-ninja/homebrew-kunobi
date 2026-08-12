class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "d8a78fd64800632ab945714216a4167e4a60a84d288975cf08f66e385d30cb92"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "a00cf53dd01017a5cecd5f03afaf56ce0f0797606abef30cf126b7e33715b7c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "938c4f50556e37058a10ffd8e3c0b55c50109de3d17477eeaeeaa97ec74ecb7d"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.39.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f8b596949d1359bef0af32e4bbaf9c5d941a9220470773304a1c3dd2ee0c1c11"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
