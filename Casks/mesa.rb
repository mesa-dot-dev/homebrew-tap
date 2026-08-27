cask "mesa" do
  version "0.47.3"
  sha256 "581dff685e3222e714d1bf68ecf3b450792dce5fbe56dd7cfa1617cc0e510793"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.47.3.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
