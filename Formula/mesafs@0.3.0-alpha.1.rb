class MesafsAT030Alpha1 < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-v0.3.0-alpha.1/mesafs-macos-universal.tar.gz"
  sha256 "536940ceeb063803bb9a3e6550a43bd5b25892bc56679b40a35d57a37ca1b096"
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
