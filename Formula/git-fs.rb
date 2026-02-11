class GitFs < Formula
  desc "Mount Mesa, GitHub and GitLab repositories as local filesystems via FUSE"
  homepage "https://github.com/mesa-dot-dev/git-fs"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.0.9/mesa-code-review-0.0.9.tgz"
  version "0.1.2-alpha.1"
  sha256 "b14ec88eab39fa9545e58097c2228aaaef06cdee14d9d08a6ef249e9ffb4874c"
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
