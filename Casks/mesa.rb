cask "mesa" do
  version "0.41.0"
  sha256 "d4427676bd2c5e6ef3df602dceb84d61c40c194dc65505369c7dc9f46340c52a"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.41.0.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
