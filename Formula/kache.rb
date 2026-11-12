class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0/kache-aarch64-apple-darwin.tar.gz"
      sha256 "b46139f7d42895c62962450886dd35f4554c17531209ea69b2db053d2a142bcb"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0/kache-x86_64-apple-darwin.tar.gz"
      sha256 "0ab8b29f659d159de78f70376c6ffa7730879f18fcde397567b683796eb5fd73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8c5ca4d1d4b6fc66e5175c8a1150e1daa85099080646322058d9083c72986bba"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v2.0.0/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6c59665faf1b14d0944391e6f2a1b510195e6be92c63060a9d1770ed00676824"
    end
  end

  def install
    bin.install "kache"
    bin.install "kache-engine" if (buildpath/"kache-engine").exist?
    bin.install "kache-clang-cl" if (buildpath/"kache-clang-cl").exist?
    bin.install "kache-cl" if (buildpath/"kache-cl").exist?
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
