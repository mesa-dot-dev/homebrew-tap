class CodeReviewAT033 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.3.3/mesa-code-review-0.3.3.tar.gz"
  sha256 "b8a43777c0719f70056cd0d8086f96b657e796507025a91d7a63e6f7d0db1d40"
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
