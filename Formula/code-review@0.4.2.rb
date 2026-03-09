class CodeReviewAT042 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.2/mesa-code-review-0.4.2.tgz"
  sha256 "2d8edab3ad7e1f3037c6536d8ff325b1c51cf1deebcad3d56831f5d473b4edd6"
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
