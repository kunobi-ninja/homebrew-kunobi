class Kache < Formula
  desc "Content-addressed zero-copy build cache for Rust, C/C++ and more"
  homepage "https://github.com/kunobi-ninja/kache"

  on_macos do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.2/kache-aarch64-apple-darwin.tar.gz"
      sha256 "10d09e146852a8df8796cf642ca58872107a7f391b7647ec8cc253cf289af0a9"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.2/kache-x86_64-apple-darwin.tar.gz"
      sha256 "9a1c3ecc89cf36b23512a93868226140d46f1f70cf6cb648bfe08eeafb25a368"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.2/kache-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38856cee613f6ee0ec579099fc9205b840a0b45bb763f4b8fa782d25d93c18ef"
    end
    on_intel do
      url "https://github.com/kunobi-ninja/kache/releases/download/v1.2.2/kache-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2f6555dee50945c2a90a7fb793c2084a00cc6459d08ac2306d38d905064321b"
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
