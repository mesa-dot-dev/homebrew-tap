class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-77a3f5b/mesafs-macos-universal.tar.gz"
  version "nightly-77a3f5b5624f7dbfa1cf3766ab0a0e08ca9cf10f"
  sha256 "02ecb36b6eef9812b4f5fc86ebeccd561b71deeffd73789819294ff8ccf4ce43"
  license "MIT"

  depends_on :macos

  def install
    bin.install "mesafs" => "mesafs-nightly"
  end

  def caveats
    <<~EOS
      mesafs-nightly requires macFUSE. Install it from:
        https://macfuse.github.io/

      The Homebrew cask version of macFUSE is outdated.
      We recommend downloading directly from the official site.
    EOS
  end
end
