cask "mesa" do
  version "0.42.1"
  sha256 "19a1f9c059ddd4a5e9de2956fd1409940a038e76f5c51e61a1a6a88e3e1d6864"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.42.1.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
