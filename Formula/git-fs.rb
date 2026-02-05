class GitFs < Formula
  desc "Mount Mesa, GitHub and GitLab repositories as local filesystems via FUSE"
  homepage "https://github.com/mesa-dot-dev/git-fs"
  version "0.0.0"
  url "https://github.com/mesa-dot-dev/git-fs/releases/download/v0.0.0/git-fs-macos-universal.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on :macos
  depends_on cask: "macfuse"

  def install
    bin.install "git-fs"
  end

  test do
    assert_match "git-fs", shell_output("#{bin}/git-fs --version", 2)
  end
end
