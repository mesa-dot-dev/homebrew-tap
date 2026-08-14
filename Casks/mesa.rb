cask "mesa" do
  version "0.47.0"
  sha256 "29347259172fffdbe9a3fd610a9c31f3c5505497448bffec6f061ab4686c14e0"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.47.0.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
