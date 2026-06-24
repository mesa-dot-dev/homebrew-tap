class Mesa < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.38.0.tar.gz"
  sha256 "234eeb0ad373b00af962b045ffdeb9c5093a42d83449827987b35a21a311fb7d"
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
