# Canonical source for the fuse-t cask published to mesa's Homebrew taps by
# .buildkite/scripts/update-homebrew.sh. Vendored from
# macos-fuse-t/homebrew-cask (Casks/fuse-t.rb @ b875611a) so mesa can pin the
# FUSE-T version its releases are tested against instead of tracking
# upstream's HEAD — FUSE-T behavior (xattr/namedattr handling in particular)
# has changed between releases.
#
# To upgrade: validate the new FUSE-T version against mesa's macOS mount
# (xattr sidecar e2e test + a manual namedattr probe via `nfsstat -m`), then
# copy the version, sha256, and any changed stanzas from upstream's cask.
cask "fuse-t" do
  version "1.0.54"
  sha256 "1bb02e4a2903d576d3088997e0c2fac74e7565e1072378e6d34aa4af4afce7a6"

  url "https://github.com/macos-fuse-t/fuse-t/releases/download/#{version}/fuse-t-macos-installer-#{version}.pkg"
  name "fuse-t"
  desc "LibFUSE implementation that doesn't use kernel extensions"
  homepage "https://github.com/macos-fuse-t/fuse-t"

  pkg "fuse-t-macos-installer-#{version}.pkg"

  uninstall script: {
    executable: "/Library/Application Support/fuse-t/uninstall.sh",
    sudo:       true,
  }

  caveats do
    license "https://github.com/macos-fuse-t/fuse-t/blob/main/License.txt"
  end
end
