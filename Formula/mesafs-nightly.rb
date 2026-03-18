class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-e1ee14d/mesafs-macos-universal.tar.gz"
  version "nightly-e1ee14d53addef354ea0d98a5b05201e1bc33f38"
  sha256 "759bc35aa02070770cfb2f42c80547cea6ceab2dcc131036d93f5f0b18944060"
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
