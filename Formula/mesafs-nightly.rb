class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-7e6bb02/mesafs-macos-universal.tar.gz"
  version "nightly-7e6bb02b8e4c0e348262c07d3e241c967c54adf3"
  sha256 "a2648a111d3ddd12243924fce5b5427e9fe048fe2e5d15b353c502b6b28a86cd"
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
