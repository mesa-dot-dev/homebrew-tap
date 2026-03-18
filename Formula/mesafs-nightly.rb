class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-14d0093/mesafs-macos-universal.tar.gz"
  version "nightly-14d0093b3a75052322ca3fcc4381217dce4a12b4"
  sha256 "36c26d259011626024dd100cadff0bbc4520a23c8292c960103e3e20adce6a7b"
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
