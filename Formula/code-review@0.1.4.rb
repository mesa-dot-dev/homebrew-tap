class DepotAT014 < Formula
  desc "Mesa code review CLI"
  homepage "https://github.com/mesa-dot-dev/depot"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.1.4/mesa-code-review-0.1.4.tgz"
  sha256 "fdd3220841e66615faa10674837d308a22b9f1734a1bfcd9569c9103cb2e7b67"
  license "Apache-2.0"
  version "0.1.4"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
