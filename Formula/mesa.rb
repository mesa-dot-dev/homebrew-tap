class Mesa < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.30.0.tar.gz"
  sha256 "0a4f7aa84019072dd89308fb0f92d55be9a60953042789cc79de3f7f6c2d0d02"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mesa"
  end

  def caveats
    <<~EOS
      mesa requires macFUSE. Install it from:
        https://macfuse.github.io/

      The Homebrew cask version of macFUSE is outdated.
      We recommend downloading directly from the official site.
    EOS
  end
end
