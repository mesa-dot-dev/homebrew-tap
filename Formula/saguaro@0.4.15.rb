class SaguaroAT0415 < Formula
  desc "Saguaro code review CLI"
  homepage "https://mesa.dev"
  version "0.4.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.15/saguaro-0.4.15-darwin-arm64.tar.gz"
      sha256 "ae76a65f930e58b5c13ea22180c3ddc9ea048f40599085ad81cec5a9d6c230a9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.15/saguaro-0.4.15-linux-x64.tar.gz"
      sha256 "624e386d6f27bdb6e5c01c7edeba9417c82abc14eb4824fb270b2eb07d721bb5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/saguaro-v0.4.15/saguaro-0.4.15-linux-arm64.tar.gz"
      sha256 "c82dc58e5baf13b8d8d7950a747052a37f980ad3bb61d6df1a80982c922f373a"
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
