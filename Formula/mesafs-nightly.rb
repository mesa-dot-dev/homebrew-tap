class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-64705f7/mesafs-macos-universal.tar.gz"
  version "nightly-64705f7de1d33a4efba76eec6bc3bf2e699c5d17"
  sha256 "a3b7e7bcc88b5e0935a8e5ac578e2e8bb9b3f5f6cf0d5321c1faf7780d7d7788"
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
