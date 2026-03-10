class CodeReviewAT0413 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  version "0.4.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.13/mesa-review-0.4.13-darwin-arm64.tar.gz"
      sha256 "bd5e37bb1709b022068b21634cc93676d53f9961b6cd42a403ade5956b635402"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.13/mesa-review-0.4.13-linux-x64.tar.gz"
      sha256 "72651c09c1a9565cfad6deae7d13f120fcfc12884d056e0fc51bb95a273c61d1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.13/mesa-review-0.4.13-linux-arm64.tar.gz"
      sha256 "ada7b657867873268865ed97b675e59d7aadcd7ef7c8d9b8b2441d739171c3f5"
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
