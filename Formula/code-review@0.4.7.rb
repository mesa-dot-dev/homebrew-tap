class CodeReviewAT047 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  version "0.4.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.7/mesa-review-0.4.7-darwin-arm64.tar.gz"
      sha256 "d77a0bf84a4ba2dc57b75665cbc2dd22fb9b6f6a7150083421c88cec040dfb2b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.7/mesa-review-0.4.7-linux-x64.tar.gz"
      sha256 "b1ba39a071127479cd8bf5a5ac619cf30c400d9cf791821961351ca8092ae3eb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.7/mesa-review-0.4.7-linux-arm64.tar.gz"
      sha256 "0676c48b205313af69f4fa81f209a35c60e088b8d7768d2e271fa091ef11940f"
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
