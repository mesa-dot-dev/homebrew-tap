class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-2139ef5/mesafs-macos-universal.tar.gz"
  version "nightly-2139ef5f6cb6f0c5a76cbe7a6b605a25ab61e23c"
  sha256 "90b13f11e52cd47ffd5a6438bd48ea877f873ba0582b3ae43b8fbbc05190eb3c"
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
