class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-31efba1/mesafs-macos-universal.tar.gz"
  version "nightly-31efba1d0ef766ea89d90ef2c99bc2e57dc1ce6f"
  sha256 "96248683b20be4de77cacc8fa8aa0b955df56247da342bd57b5e0ac07e5f7cf9"
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
