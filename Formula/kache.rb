class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.25.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "3d0604cadba6323cacfc28ea69bfdf9bfb44607cb012c7272321cdbc31a6a83e"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.25.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "2c6da934dac7e6292c14795475d4ed5952485845927b5ed1f908ad92c335b33c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.25.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e51f537f7fd4ea9286bbb1022f1ed899780c5c559de1ffe415209f22207d7a1"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v0.25.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdf924f04270fb7358bfdbb3ccb5960d1f40b60be2ba50500c28144ac84a06fa"
    end
  end

  def install
    bin.install "kache"
  end

  def caveats
    <<~EOS
      To configure Kache without installing its native daemon service:
        #{opt_bin}/kache init --no-service

      To start the Homebrew-managed daemon:
        brew services start #{name}
    EOS
  end

  service do
    run [opt_bin/"kache", "daemon", "run"]
    keep_alive true
    restart_delay 5
  end

  test do
    system bin/"kache", "--version"
  end
end
