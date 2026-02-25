class CodeReviewAT0217 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.17/mesa-code-review-0.2.17.tar.gz"
  sha256 "6e6cba46e0622c3bfc75668586aecaa7ce0541cc8081d059d357639510182d3d"
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
