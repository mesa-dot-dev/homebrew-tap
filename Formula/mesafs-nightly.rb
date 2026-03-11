class MesafsNightly < Formula
  desc "Mount Mesa repositories as local filesystems via FUSE (nightly)"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesafs-nightly-deb34ed/mesafs-macos-universal.tar.gz"
  version "nightly-deb34edfbd8c47446e52535ca16ca609ea8b0b1f"
  sha256 "aa0de6e0c00a564e3219ee394b26e24bcb6dda1c80fe66abfdaa914229a1879f"
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
