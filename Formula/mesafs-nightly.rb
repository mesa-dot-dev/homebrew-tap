class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-8c52cb4/mesafs-macos-universal.tar.gz"
  version "nightly-8c52cb4fd5c0830ff5d812338ffe8af99e9f9d3e"
  sha256 "b2ee2a11004ec9cc22acee8a56ed8ccbc16ac9b5a80f20296b62554fefc9c94b"
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
