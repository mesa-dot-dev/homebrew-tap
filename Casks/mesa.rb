cask "mesa" do
  version "0.39.0"
  sha256 "7d31e7f18e3ec52b950c6a24b99f861998d5a21f790e4e7c014a328b71277e8a"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.39.0.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"

  depends_on arch: :arm64

  caveats <<~EOS
    mesa requires macFUSE. Install it from:
      https://macfuse.github.io/

    The Homebrew cask version of macFUSE is outdated.
    We recommend downloading directly from the official site.
  EOS

  binary "mesa"
end
