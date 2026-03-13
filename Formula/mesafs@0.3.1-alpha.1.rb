class MesafsAT031Alpha1 < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-v0.3.1-alpha.1/mesafs-macos-universal.tar.gz"
  sha256 "9f8b0097be3ea70507dba6cb66ecee2cbfc6ccefa200179806546ec24d0798c9"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mesafs"
  end

  def caveats
    <<~EOS
      mesafs requires macFUSE. Install it from:
        https://macfuse.github.io/

      The Homebrew cask version of macFUSE is outdated.
      We recommend downloading directly from the official site.
    EOS
  end
end
