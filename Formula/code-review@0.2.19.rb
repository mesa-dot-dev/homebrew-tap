class CodeReviewAT0219 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.19/mesa-code-review-0.2.19.tar.gz"
  sha256 "4c7a966a31536ac879c42ce72220727ca4fa9ac51b6628735408b6f63a1ed9d7"
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
