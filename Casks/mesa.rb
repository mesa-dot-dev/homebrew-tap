cask "mesa" do
  version "0.42.0"
  sha256 "36f71aa3801df53be63a68189e7aaa6dd5b8cc2fbf3256dd75b0cf33c29bdb58"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.42.0.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
