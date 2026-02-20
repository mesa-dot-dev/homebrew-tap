class CodeReviewAT025 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.5/mesa-code-review-0.2.5.tgz"
  sha256 "ba17406090cacd6d7fe703d3d8d0ff3b79cdd58e4c782943fd67bb56fdbd8949"
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
