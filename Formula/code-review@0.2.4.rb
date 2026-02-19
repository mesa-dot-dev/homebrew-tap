class CodeReviewAT024 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.4/mesa-code-review-0.2.4.tgz"
  sha256 "1a0863a4df4de38feb3476e372ee5bc0b9c6f53695b359f2b4f0f65e88be57ba"
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