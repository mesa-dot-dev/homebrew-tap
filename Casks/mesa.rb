cask "mesa" do
  version "0.40.0"
  sha256 "ab7ec4a5949ad4974a4ed7bdaf7b26fba272dd6713bd1649c4819f7a6c3209b6"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.40.0.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
