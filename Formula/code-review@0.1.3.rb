class DepotAT013 < Formula
  desc "Mesa code review CLI"
  homepage "https://github.com/mesa-dot-dev/depot"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.1.3/mesa-code-review-0.1.3.tgz"
  sha256 "72e06aa3c19f9cffa253bdd569bfcb5663aa8dbdf989589fb46a882389a58555"
  license "Apache-2.0"
  version "0.1.3"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
