class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-eee957a/mesafs-macos-universal.tar.gz"
  version "nightly-eee957a6f2fdfdc8169a1b83bcdd92374d61bf6a"
  sha256 "96a52114276c1279ad1a1ddfe90f7bd3112ba5dac9f10287e34fd1517bc66ac9"
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
