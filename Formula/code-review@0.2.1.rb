class CodeReviewAT021 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.1/mesa-code-review-0.2.1.tgz"
  sha256 "58baaa269ee044558cf28c968dd90011352d7f1fbba6380284acbc356d4e430c"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
