class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-e996179/mesafs-macos-universal.tar.gz"
  version "nightly-e9961790bea32b96f2eef8ef3316ab2ec8d71c69"
  sha256 "c548662a3a3f6b56e8a43d531e9a9a9ddb8b59490f9bc839200c928ac5571898"
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
