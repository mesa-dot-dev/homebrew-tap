class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-2c8b690/mesafs-macos-universal.tar.gz"
  version "nightly-2c8b6906531f641b2840bd8ecb6d981068b08e2e"
  sha256 "35a4e73476bb15f3ebdc853c709c2ed2476438a9687a7e49f64ac0565cfc6986"
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
