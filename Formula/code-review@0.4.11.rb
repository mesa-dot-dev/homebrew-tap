class CodeReviewAT0411 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  version "0.4.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.11/mesa-review-0.4.11-darwin-arm64.tar.gz"
      sha256 "c0e343329828c1d1f81bf4bbebbe45bd4d2ac2342f15d7013630a19ae9be60d3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.11/mesa-review-0.4.11-linux-x64.tar.gz"
      sha256 "564ee0720cdf6159f7c104d4da7cde3c512b9441f2f7f937c37d0fa9a7258507"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.11/mesa-review-0.4.11-linux-arm64.tar.gz"
      sha256 "abb314f0784d53b791be242dfa4a73ac4a5b1abb9863a5ad3e245c48936381b7"
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
