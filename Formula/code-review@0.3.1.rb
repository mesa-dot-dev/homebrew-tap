class CodeReviewAT031 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.3.1/mesa-code-review-0.3.1.tar.gz"
  sha256 "e8679ce8bf0e0f91baf9302378979a894872c81b65cb521e15f5dab308a00265"
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
