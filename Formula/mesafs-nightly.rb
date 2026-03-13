class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-7b4fbe7/mesafs-macos-universal.tar.gz"
  version "nightly-7b4fbe77cade03c6f0052d29def7637e0c784729"
  sha256 "74d59a1cb5addb68a439994606b5f65fda96c3406ca69bc6ee0209bacd5ac833"
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
