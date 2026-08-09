cask "mesa" do
  version "0.44.0"
  sha256 "297e0c1d590073d9cd321cb56c3de6690dd95d7a1c952ea4dbcf1664af1d2d7a"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.44.0.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
