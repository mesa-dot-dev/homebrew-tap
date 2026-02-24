class CodeReviewAT0215 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.15/mesa-code-review-0.2.15.tar.gz"
  sha256 "1ea296e2411fdce0c6fee5133e255c763f9b1bfb7846cce81891b613daf627d4"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "mesa"
    (bin/"wasm").install Dir["wasm/*"]
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
