class CodeReviewAT0412 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  version "0.4.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.12/mesa-review-0.4.12-darwin-arm64.tar.gz"
      sha256 "a6e671881c085e42f6369fcbdce19be0dc6195e9da6438cbf020e7ab9e98eb19"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.12/mesa-review-0.4.12-linux-x64.tar.gz"
      sha256 "cfcf4662f1e765ee0bc642ea619b4e90dd15a1c5fd304f84f9f62e0778c450db"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.4.12/mesa-review-0.4.12-linux-arm64.tar.gz"
      sha256 "651d68ec20207443f976fba424a2dd960972ad50ee90476115ad4aeb0f0e0700"
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
