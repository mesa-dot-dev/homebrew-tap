class CodeReviewAT0220 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.20/mesa-code-review-0.2.20.tar.gz"
  sha256 "45ea092d7bbbb1c24c439da08fcaeb9584f58eeea547b4364c6ecdd89dcf02a7"
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
