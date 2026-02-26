class CodeReviewAT0218 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.18/mesa-code-review-0.2.18.tar.gz"
  sha256 "1af2bfd249738eb5b3d9a0fcbff8192b5fb91b720dc869da5c870ba7526246dc"
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
