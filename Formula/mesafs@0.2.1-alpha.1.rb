class MesafsAT021Alpha1 < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-v0.2.1-alpha.1/mesafs-macos-universal.tar.gz"
  sha256 "96dc9d4c128cac8231bf7385cef8aea600ab735be4e3d7827121bc751935090b"
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
