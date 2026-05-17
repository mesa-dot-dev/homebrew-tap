class Mesa < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.29.2.tar.gz"
  sha256 "47bf50677cda24e1646cc4212c04d6dbc4954f1ef2b12f894f80d706a4dddeb2"
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
