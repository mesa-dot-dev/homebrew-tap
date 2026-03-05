class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-e9392b6/mesafs-macos-universal.tar.gz"
  version "nightly-e9392b6c24775268a22c77ba2ef67e666b7a85ce"
  sha256 "a548e52d60a4b504cc94e2a110b3f79d3476e903c44fe8ab70100d2aaef32775"
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
