class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-2b2a23b/mesafs-macos-universal.tar.gz"
  version "nightly-2b2a23bc2aae5b793410ea8e0fed45a07abee01b"
  sha256 "75fb2cfb4f4d1b8cfdaa87e68caafaea346b94db52655ff9a092f7512205942a"
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
