class CodeReviewAT0212 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.12/mesa-code-review-0.2.12.tar.gz"
  sha256 "d43f43831911e0ddf06818b56be46d87e3f947b9c684f947ab945660febfd3bd"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "mesa"
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
