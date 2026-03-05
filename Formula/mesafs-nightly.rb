class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-d176c4a/mesafs-macos-universal.tar.gz"
  version "nightly-d176c4ad77b38eab9738186381165912d1cc5ea3"
  sha256 "5024dbd02c43a9a20d019287862b1c4fc4b219f5236a3f9d088c2b2a815b3ded"
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
