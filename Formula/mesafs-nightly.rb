class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-1564f1a/mesafs-macos-universal.tar.gz"
  version "nightly-1564f1ad6940ee4018127eb4d88402d13140e8d0"
  sha256 "148b7f438b3bc986099d4ad8691dd291d2e23cd582555bc02ec562c2f9f9a020"
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
