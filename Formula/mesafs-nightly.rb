class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-ba93b1a/mesafs-macos-universal.tar.gz"
  version "nightly-ba93b1afd89be7b1c1eb1c8d8b27e2b440c17a64"
  sha256 "d8a75c7ff7c40249d9ba3e10a6a486dd68486b413a3fa5787af2843037b29536"
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
