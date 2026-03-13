class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-d8f2727/mesafs-macos-universal.tar.gz"
  version "nightly-d8f2727852e11d18921cf349c14da32b827af5e3"
  sha256 "2b2836ebb267b8c5659cabdea9352f9c24ce8e6cf144be36c16bb1f70655d42b"
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
