class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-6f257eb/mesafs-macos-universal.tar.gz"
  version "nightly-6f257ebe3a74f83aab1ae56983da3d43cdc07ec2"
  sha256 "cb9de1ed77f0a470e75d6a187f4364bc7d65a8d0291125de35073628c9351517"
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
