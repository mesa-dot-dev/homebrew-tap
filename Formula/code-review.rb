class CodeReview < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.0/mesa-code-review-0.2.0.tgz"
  sha256 "a40e768c844bc10d0f6f3a83d7400b5eb70fbb25d67e1549dd661a3e77beddb1"
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
