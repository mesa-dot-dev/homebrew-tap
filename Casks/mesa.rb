cask "mesa" do
  version "0.47.1"
  sha256 "a5edd381f59cce29b6a57370275abfe41c496188fa87692e44d084908ae42adc"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.47.1.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
