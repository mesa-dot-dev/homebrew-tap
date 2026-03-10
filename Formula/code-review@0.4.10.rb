class CodeReviewAT0410 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  version "0.4.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.10/mesa-review-0.4.10-darwin-arm64.tar.gz"
      sha256 "b42786a230824094f256df29e1f14e0fcda503bda5bf3b80306f09fb11b2c681"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.10/mesa-review-0.4.10-linux-x64.tar.gz"
      sha256 "a847847715c362c5c5fd4c6fe4db54978b314b561f332957dd90d2fa751b455d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.10/mesa-review-0.4.10-linux-arm64.tar.gz"
      sha256 "d7e27a8846087089ac387327fcd270aa50546263d8da427280a9cfb1d48c6faa"
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
