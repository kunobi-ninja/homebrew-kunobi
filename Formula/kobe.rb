class Kobe < Formula
  desc "Cluster pool operator CLI for instant CI/dev cluster provisioning"
  homepage "https://github.com/kunobi-ninja/kobe"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.51.0/kobe-aarch64-apple-darwin.tar.gz"
      sha256 "6100dd58fdb8caba9aad1b3aacfbed2bfc823535a7c3f06cf9cc0547aa140691"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.51.0/kobe-x86_64-apple-darwin.tar.gz"
      sha256 "c5459897904dc2d888f036d0a9786ed4a79aebe3610ae60c026436da0f13d3cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.51.0/kobe-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ffadb76e1416bef46057177aa7bf86c5d802d657c54cb21b4980d96eace400c"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kobe/releases/download/v0.51.0/kobe-x86_64-unknown-linux-musl.tar.gz"
      sha256 "95b6c1eb176b61453d0309faa226b5fd5ef16a61d9e27f2751e2dea7cf5b0fca"
    end
  end

  def install
    bin.install "kobe"
  end

  test do
    system bin/"kobe", "--version"
  end
end
