class SaguaroAT0421 < Formula
  desc "AI code review CLI that enforces your team's rules"
  homepage "https://mesa.dev"
  version "0.4.21"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.21/saguaro-0.4.21-darwin-arm64.tar.gz"
      sha256 "321a562c58f44be6419370c7bd8bcf8692ebe0637327283326deb5746022e41c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.21/saguaro-0.4.21-linux-x64.tar.gz"
      sha256 "7a573f9a3655f89ec4b76f97c5b2dd6ef79619d1a8b484aeab48d82dd68ba049"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.21/saguaro-0.4.21-linux-arm64.tar.gz"
      sha256 "c056f5db976e85c76aac33c7065f0b48bed372509088c5aaf3010a205445bcad"
    end
  end

  skip_clean "libexec"

  def install
    libexec.install "sag"
    (libexec/"wasm").install Dir["wasm/*"]
    bin.install_symlink libexec/"sag"
  end

  test do
    assert_match "sag", shell_output("#{bin}/sag --help")
  end
end
