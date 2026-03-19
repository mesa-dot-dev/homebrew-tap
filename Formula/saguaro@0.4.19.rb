class SaguaroAT0419 < Formula
  desc "AI code review CLI that enforces your team's rules"
  homepage "https://mesa.dev"
  version "0.4.19"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.19/saguaro-0.4.19-darwin-arm64.tar.gz"
      sha256 "a76e695926af4a3e5178ebb41f8a1ee5343499f7664644b0c2fc7fc6b254fb3d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.19/saguaro-0.4.19-linux-x64.tar.gz"
      sha256 "c4950f988ee69ddc20a31f3e05d725b4e1888d2a19ab01b4b1777cccb94798bb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.19/saguaro-0.4.19-linux-arm64.tar.gz"
      sha256 "e265d24c6ee39feb7fb6bc3893e220d4c68d0efcb944c96993cae929b1e0dfe2"
    end
  end

  skip_clean "libexec"

  def install
    libexec.install "sag"
    (libexec/"wasm").install Dir["wasm/*"]
    bin.install_symlink libexec/"sag"
  end

  test do
    assert_match "sag", shell_output("#{bin}/sag --help")
  end
end
