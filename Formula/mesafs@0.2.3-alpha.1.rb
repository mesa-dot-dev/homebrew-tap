class MesafsAT023Alpha1 < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-v0.2.3-alpha.1/mesafs-macos-universal.tar.gz"
  sha256 "14dcc3956b81028820df6dd59ee949f136ccbcb3b33929d9a4acc15282c3bc81"
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
