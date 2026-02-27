class CodeReviewAT0221 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.21/mesa-code-review-0.2.21.tar.gz"
  sha256 "0e9094b5dc11bc9a9abdb9a5d6b22e7ddee8faba5a726e04cb82a5aa5c843581"
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
