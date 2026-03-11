class SaguaroAT0414 < Formula
  desc "Saguaro code review CLI"
  homepage "https://mesa.dev"
  version "0.4.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.14/saguaro-0.4.14-darwin-arm64.tar.gz"
      sha256 "3c91d29506a7b0e7383d631007220d709f56c483af4d9e44b2579ab07c1dc5d0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.14/saguaro-0.4.14-linux-x64.tar.gz"
      sha256 "3b8aa8c60dbd652cfc3736aaccd1a216afb721d67e077af155c0c72aad74f8d8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.14/saguaro-0.4.14-linux-arm64.tar.gz"
      sha256 "8deea6721800c69122e04e35cb29f48193d190a5c3189f2200f10cad6e18400a"
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
