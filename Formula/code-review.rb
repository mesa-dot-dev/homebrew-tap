class CodeReview < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.0.6/mesa-code-review-0.0.6.tgz"
  sha256 "5bc7bed81c03ad4bb6200e4d42ed6f25d8a9b6a493e244822afd8bcd4c4f9148"
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
