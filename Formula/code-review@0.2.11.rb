class CodeReviewAT0211 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.11/mesa-code-review-0.2.11.tar.gz"
  sha256 "ac918d9b84d500a895c8a8016b25b8b64ab7117dc5f6d605e5ed78c02121893b"
  license "Apache-2.0"

  depends_on arch: :arm64

  def install
    bin.install "mesa"
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
