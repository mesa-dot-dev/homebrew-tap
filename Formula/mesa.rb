class Mesa < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.10.0.tar.gz"
  version "0.10.0"
  sha256 "520c62037db5e40413ac487d0d99a88763400848b71b9bad809c7e58605f6e8d"
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
