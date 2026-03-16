class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-3d00dc2/mesafs-macos-universal.tar.gz"
  version "nightly-3d00dc223f7171db4a6d2daa11521af27920ff6f"
  sha256 "42e6a6dff0752fae3f575bd8126596912df0bf324cf9bc772f12dbf9792cf4e5"
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
