class SaguaroAT0418 < Formula
  desc "AI code review CLI that enforces your team's rules"
  homepage "https://mesa.dev"
  version "0.4.18"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.18/saguaro-0.4.18-darwin-arm64.tar.gz"
      sha256 "f24233978753691221928e91b43a0bf479dd9b4fb7e37c5693e642b772e3014d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.18/saguaro-0.4.18-linux-x64.tar.gz"
      sha256 "124fc7011a6eb7fa49147cc95aff3bf1d03da00da054aa12ade7a2abc81b6942"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.18/saguaro-0.4.18-linux-arm64.tar.gz"
      sha256 "84b6b8349f2aed93470199cdecb8584a5ba53c4863120f45451a807f030e6a55"
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
