class CodeReviewAT022 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.2/mesa-code-review-0.2.2.tgz"
  sha256 "b6ac017f36984bf87c25878455f8ca2dceced2c71a2efd3cd74a46ca4b44d135"
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