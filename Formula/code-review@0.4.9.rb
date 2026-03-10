class CodeReviewAT049 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  version "0.4.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.9/mesa-review-0.4.9-darwin-arm64.tar.gz"
      sha256 "264f5fa073af98bb13bf648a881c321d892cd3604ac6d35cd6b368b5734fd308"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.9/mesa-review-0.4.9-linux-x64.tar.gz"
      sha256 "4aabe70285d42efbf64f381ca3eeed10a68428ff0cbe74931efbb55c17793616"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.9/mesa-review-0.4.9-linux-arm64.tar.gz"
      sha256 "ee24b8e6723280a8c95e7d2a104947f7ea5046b0ce4dfeb0a3ff39f68c258ec3"
    end
  end

  skip_clean "libexec"

  def install
    libexec.install "mesa"
    (libexec/"wasm").install Dir["wasm/*"]
    bin.install_symlink libexec/"mesa"
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
