class GitFs < Formula
  desc "Mount Mesa, GitHub and GitLab repositories as local filesystems via FUSE"
  homepage "https://github.com/mesa-dot-dev/gitfs"
  url "https://github.com/mesa-dot-dev/git-fs/releases/download/v0.1.3-alpha.1/git-fs-macos-universal.tar.gz"
  version "0.1.3-alpha.1"
  sha256 "ff11c954af38bd7bea7e85ac24afb36f742a77039484200506ebebee365dc352"
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
