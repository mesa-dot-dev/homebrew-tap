class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-5f8c4b6/mesafs-macos-universal.tar.gz"
  version "nightly-5f8c4b65acba6fe212e87df904fbe2341a84961f"
  sha256 "a844d85054a0e6b0893b42501c19aed4eb5f88ec268b8145f0e5f0f42d186874"
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
