class SaguaroAT0417 < Formula
  desc "AI code review CLI that enforces your team's rules"
  homepage "https://mesa.dev"
  version "0.4.17"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.17/saguaro-0.4.17-darwin-arm64.tar.gz"
      sha256 "2ca127f064330809a195e7534fc4870717a60928fda4ae08c5066677c3a1546b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.17/saguaro-0.4.17-linux-x64.tar.gz"
      sha256 "df3caecb56657048f659a72e38daf5c218ccf5340e47c3181aaa5fd30b123484"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.17/saguaro-0.4.17-linux-arm64.tar.gz"
      sha256 "6e9a65008f5eba03e817867e60d9828da6559a7a35244b266c395e550b3bf7ad"
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
