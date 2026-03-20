class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-81e9dfa/mesafs-macos-universal.tar.gz"
  version "nightly-81e9dfa9eeea59dd226ca372d0e1c1111d397060"
  sha256 "9d088a39472decb230eafa33b631e4f7ec4a9974430af410bd6ab75fb7525ece"
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
