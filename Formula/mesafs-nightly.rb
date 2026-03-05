class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-359ec07/mesafs-macos-universal.tar.gz"
  version "nightly-359ec078f91a891adc8152cb12e0c4b676ac487b"
  sha256 "979e4c4987be8cb60874dbe45946b5adc1ae39a2bcfc2a7dbeacc8bfcfdcb204"
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
