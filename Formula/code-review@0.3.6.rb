class CodeReviewAT036 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.3.6/mesa-code-review-0.3.6.tar.gz"
  sha256 "0fa506663c4435b68220dd5e8cf7ad08f0b99ea567dbce5e5766b0ae10a57f60"
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
