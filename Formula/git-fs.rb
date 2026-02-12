class Gitfs < Formula
  desc "Mount Mesa, GitHub and GitLab repositories as local filesystems via FUSE"
  homepage "https://github.com/mesa-dot-dev/gitfs"
  url "https://github.com/mesa-dot-dev/git-fs/releases/download/v0.1.2-alpha.1/git-fs-macos-universal.tar.gz"
  version "0.1.2-alpha.1"
  sha256 "1893ee1f78f0e087ff1e0952d1395a3c077667d13677d4b78588050cf3e3cfd8"
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
