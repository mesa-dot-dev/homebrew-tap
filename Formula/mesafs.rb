class Mesafs < Formula
  desc "Mount Mesa, GitHub and GitLab repositories as local filesystems via FUSE"
  homepage "https://github.com/mesa-dot-dev/mesafs"
  url "https://github.com/mesa-dot-dev/mesafs/releases/download/v0.2.0-alpha.1/mesafs-macos-universal.tar.gz"
  version "0.2.0-alpha.1"
  sha256 "1ddba635ca9c4b4d9ecbef52cf76b139395204e265a5e07b66ce70b7a332badd"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mesafs"
  end

  def caveats
    <<~EOS
      mesafs requires macFUSE. Install it from:
        https://macfuse.github.io/

      The Homebrew cask version of macFUSE is outdated.
      We recommend downloading directly from the official site.
    EOS
  end
end
