class CodeReviewAT046 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  version "0.4.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.6/mesa-review-0.4.6-darwin-arm64.tar.gz"
      sha256 "d24f6c29646f64f369d939cfcbb367feee2bc04fdcf61459d35f949d0307e7ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.6/mesa-review-0.4.6-linux-x64.tar.gz"
      sha256 "51d43b4b5f2ad2e85e171dfbbd1adf0d94b4a540fb8951e5a7f500a943fdda26"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.6/mesa-review-0.4.6-linux-arm64.tar.gz"
      sha256 "a6fdf92126d8a9a356397589f0701d5c0236c158cba436a1abf4ae0927f482c9"
    end
  end

  skip_clean "libexec"

  def install
    libexec.install "mesa"
    (libexec/"wasm").install Dir["wasm/*"]
    bin.install_symlink libexec/"mesa"
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
