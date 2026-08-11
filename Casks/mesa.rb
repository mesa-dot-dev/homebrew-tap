cask "mesa" do
  version "0.45.0"
  sha256 "e7ae11792f1e687c28b35cae3c471cf250974b6834c566b483a94f0695f8792e"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.45.0.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
