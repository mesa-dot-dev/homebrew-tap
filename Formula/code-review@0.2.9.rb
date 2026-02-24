class CodeReviewAT029 < Formula
  desc "Mesa code review CLI"
  homepage "https://mesa.dev"
  url "https://github.com/mesa-dot-dev/homebrew-tap/releases/download/mesa-code-review-v0.2.9/mesa-code-review-0.2.9.tar.gz"
  sha256 "017e4968ce4c87d31d9707c4db61bb8e91d2fb286d34603884864a155fbfb236"
  license "Apache-2.0"

  def install
    if Hardware::CPU.arm?
      bin.install "mesa-darwin-arm64" => "mesa"
    else
      bin.install "mesa-darwin-x64" => "mesa"
    end
  end

  test do
    assert_match "mesa", shell_output("#{bin}/mesa --help")
  end
end
