cask "mesa" do
  version "0.47.2"
  sha256 "b8b6b3df0d82ef2881998fc88b2c7ca0e2e41b2eef389a9a0802687f1a7b6eaa"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.47.2.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
