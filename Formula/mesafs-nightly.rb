class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-d8dd368/mesafs-macos-universal.tar.gz"
  version "nightly-d8dd36804897e2a67bbb68da6feab84785aa64c8"
  sha256 "8e75c341a9a7d441ae5e5896f53c8dcd3b025d583a57d93b9ed315b9cc2b0a3d"
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
