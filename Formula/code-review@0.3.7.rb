class CodeReviewAT037 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.3.7/mesa-code-review-0.3.7.tar.gz"
  sha256 "3580c5ae590047d01d5fd7546f81a725336d53dbe9f67237fa7b3a0d22de0561"
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
