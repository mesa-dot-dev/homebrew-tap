class SaguaroAT0416 < Formula
  desc "AI code review CLI that enforces your team's rules"
  homepage "https://mesa.dev"
  version "0.4.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.16/saguaro-0.4.16-darwin-arm64.tar.gz"
      sha256 "36103662b5bd67f036a362525ad8ab4a416cecd5d91aedd1f25797b7abe7de51"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.16/saguaro-0.4.16-linux-x64.tar.gz"
      sha256 "38895dae1f8790bb5639365bca42bf39900a6c15a612f23ca04761b3dee8263b"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.16/saguaro-0.4.16-linux-arm64.tar.gz"
      sha256 "5369b00094f3cc59cbf67f848a29b5845549492c08a432c83c446489a60ee2af"
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
