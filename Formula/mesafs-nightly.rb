class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-7ce1765/mesafs-macos-universal.tar.gz"
  version "nightly-7ce17651cdd363feac93637114ea322b0ef564e3"
  sha256 "341c353d7e1b3dbbb0901a59b091da7cc76bfcd2ad81de911f5bb99216bb9ad3"
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
