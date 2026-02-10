class CodeReview < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.0.4/mesa-code-review-0.0.4.tgz"
  sha256 "a4c9a877778ce99a23de11e093faf99bf948f8b6a2fa74f673f8fd82f68e56a2"
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
