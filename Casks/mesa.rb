cask "mesa" do
  version "0.44.1"
  sha256 "efb19eaca599cbe08d040e2385f55daf7ab7f7159cd72dd2d33b79f19d61cc0e"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.44.1.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
