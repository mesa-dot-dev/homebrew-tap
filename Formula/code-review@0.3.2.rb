class CodeReviewAT032 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.3.2/mesa-code-review-0.3.2.tar.gz"
  sha256 "a79bf62074c7098aaf36cad450bb1ae5de41b5ecc3c8bcf48f3f90c6e7f3ad63"
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
