cask "mesa" do
  version "0.43.0"
  sha256 "3be5ea0590e6883f09228c5f8ab7fc30b50dea2601496153561665fb3a781b63"

  url "https://packages.buildkite.com/mesa-dot-dev/files-public/files/mesa-macos-arm64-0.43.0.zip"
  name "Mesa"
  desc "Mount Mesa repositories as local filesystems via FUSE"
  homepage "https://mesa.dev/"

  depends_on arch: :arm64
  depends_on cask: "mesa-dot-dev/tap/fuse-t"

  binary "mesa"
end
