class CodeReviewAT048 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  version "0.4.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.8/mesa-review-0.4.8-darwin-arm64.tar.gz"
      sha256 "29b6bcbd8c04fa436a3b139012f20ec7e2791f33ec0a3cc05412c861f77498a6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.8/mesa-review-0.4.8-linux-x64.tar.gz"
      sha256 "959f94e2738ff33dbce618d8ab4b23bd81a84315074bf36b8c21558f3c0fbfde"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.8/mesa-review-0.4.8-linux-arm64.tar.gz"
      sha256 "f7979219c7eb04a1af21d0cb4ffa7f43c0c928675606169fab595246c40de45d"
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
