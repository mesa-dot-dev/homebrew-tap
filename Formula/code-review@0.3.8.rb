class CodeReviewAT038 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.3.8/mesa-code-review-0.3.8.tar.gz"
  sha256 "0aeb633c213ce554df1393203298c7368f84f47d7d7ad85b03d842dcaa4fc26e"
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
