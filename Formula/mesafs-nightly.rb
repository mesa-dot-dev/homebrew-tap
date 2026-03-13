class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-096f3b5/mesafs-macos-universal.tar.gz"
  version "nightly-096f3b5ccc37cf7d9729fdf1135778a2500d5bb8"
  sha256 "b4539692486c894c3fc84e2b17b6ed39c8eb1a42be096bba96de252f9a302827"
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
