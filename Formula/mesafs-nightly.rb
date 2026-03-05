class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-02462d5/mesafs-macos-universal.tar.gz"
  version "nightly-02462d5834a690e2eabf85ad2f1d914ae15b9b13"
  sha256 "92a8a26a09395b3e01b3ffeb4ec021f13824c82845e9f39c733587a9062b6a29"
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
