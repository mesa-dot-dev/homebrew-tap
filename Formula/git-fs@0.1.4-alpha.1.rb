class GitfsAT014Alpha1 < Formula
  desc "Mount Mesa, GitHub and GitLab repositories as local filesystems via FUSE"
  homepage "https://github.com/mesa-dot-dev/gitfs"
  url "https://github.com/mesa-dot-dev/git-fs/releases/download/v0.1.4-alpha.1/git-fs-macos-universal.tar.gz"
  version "0.1.4-alpha.1"
  sha256 "a002a458d547b8652014e016b97ab711090109a3f541688ffd5b8072534e397c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "git-fs"
  end

  def caveats
    <<~EOS
      git-fs requires macFUSE. Install it from:
        https://macfuse.github.io/

      The Homebrew cask version of macFUSE is outdated.
      We recommend downloading directly from the official site.
    EOS
  end
end
