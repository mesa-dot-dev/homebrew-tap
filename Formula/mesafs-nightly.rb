class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-c87e8f8/mesafs-macos-universal.tar.gz"
  version "nightly-c87e8f8145985e8adbb4418b758fc18e6aa5200e"
  sha256 "cab680aca0a23e5b3f10ba123b11617792d3c4e53b932339b9f9817522a7a896"
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
