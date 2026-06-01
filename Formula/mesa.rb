class Mesa < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"
  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.34.0.tar.gz"
  sha256 "71edffe71fc0307b4c094b1d14a78544d4555a0b9bc1e36b95aad4ecd445ab13"
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
