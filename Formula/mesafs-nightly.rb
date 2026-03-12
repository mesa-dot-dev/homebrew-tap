class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-eadb01b/mesafs-macos-universal.tar.gz"
  version "nightly-eadb01bb1d93909c5d61f6582c81b743737e32da"
  sha256 "12305b58b8aaf8a82cd984937c487bcbc1a579c936363fee12e41ca9c165c392"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mesafs" => "mesafs-nightly"
  end

  def caveats
    <<~EOS
      mesafs-nightly requires macFUSE. Install it from:
        https://macfuse.github.io/

      The Homebrew cask version of macFUSE is outdated.
      We recommend downloading directly from the official site.
    EOS
  end
end
