class SaguaroAT042 < Formula
  desc "AI code review CLI that enforces your team's rules"
  homepage "https://mesa.dev"
  version "0.4.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.2/saguaro-0.4.2-darwin-arm64.tar.gz"
      sha256 "327bbdf54d444aba6b2ecb85610a1011ec94855af789ccdcd04d3f16ec298f14"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.2/saguaro-0.4.2-linux-x64.tar.gz"
      sha256 "6e2b3ce08e37b5cb0614a0a84bc81e7e451d2cf727b588e1d7007131c576a737"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.2/saguaro-0.4.2-linux-arm64.tar.gz"
      sha256 "7b665028b30f3de01ab95561417e51f2a555054a96a1851ed2bc51fda6ad54dd"
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
