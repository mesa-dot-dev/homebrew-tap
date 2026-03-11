class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-377ce5e/mesafs-macos-universal.tar.gz"
  version "nightly-377ce5eb8024f3b7ba67e487fd3dd35450295c89"
  sha256 "8b4cb5a26414ccedcd6a80c427a37cd72730bc71c559b92f37c7fc6a1a191c60"
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
