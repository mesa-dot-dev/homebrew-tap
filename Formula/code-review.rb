class CodeReview < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.0.3/mesa_0.0.3_darwin_arm64.tar.gz"
      sha256 "6f850e1d17067bfdff793e673eadb691d8bf5bfec1dc5e026d37032374858537"
    else
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.0.3/mesa_0.0.3_darwin_x64.tar.gz"
      sha256 "6f5c23cdd5c3475adf7902bac655207679316ca73f47ca245ec5538f6376ba01"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.0.3/mesa_0.0.3_linux_arm64.tar.gz"
      sha256 "3477c4ee1f1ca271595f5740a63c8749a80f14928886532e15fe61b89246528d"
    else
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.0.3/mesa_0.0.3_linux_x64.tar.gz"
      sha256 "d2ea054eff1bfea0cc9a76463fb4139d4ad3249d60b66518552d761d951b11a9"
    end
  end

  def install
    bin.install "mesa"
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
