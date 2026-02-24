class CodeReviewAT0213 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.13/mesa-code-review-0.2.13.tar.gz"
  sha256 "a52b5f51ffe0b7ecad05d1c34adc724455049e002d3b70b7ee78436122134f4b"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "mesa"
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
