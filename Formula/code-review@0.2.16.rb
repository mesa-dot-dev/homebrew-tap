class CodeReviewAT0216 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.16/mesa-code-review-0.2.16.tar.gz"
  sha256 "cd23bfb9b266ee4537f757d23be6b387c244207d9ef23d8eefe6a4156ea720e6"
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
