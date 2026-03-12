class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-c85d425/mesafs-macos-universal.tar.gz"
  version "nightly-c85d425daf859135e162926bdf1fd3e9ea7a4119"
  sha256 "cae0d4a497ebf52283b63c561453c88e7b4ffdd4b07febbafea5c1d133716aea"
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
