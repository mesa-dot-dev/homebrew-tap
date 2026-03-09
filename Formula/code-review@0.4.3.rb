class CodeReviewAT043 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.3/mesa-code-review-0.4.3.tgz"
  sha256 "76b10632b0fbdaaff31d15eb6c5a82b180db87dfec0f9c35fe76fb4fada83980"
  license "Apache-2.0"

  depends_on "node"

  skip_clean "libexec"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
