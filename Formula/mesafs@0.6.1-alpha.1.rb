class MesafsAT061Alpha1 < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-v0.6.1-alpha.1/mesafs-macos-universal.tar.gz"
  sha256 "2d898086de3980238e63b88c4553acc3b8a1b232cedfd4201278b9810cc49d15"
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
