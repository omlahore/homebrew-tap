class Bodycam < Formula
  desc "Record what AI coding agents do on your Mac"
  homepage "https://github.com/omlahore/bodycam"
  url "https://github.com/omlahore/bodycam/releases/download/v0.1.0/bodycam-darwin-universal.tar.gz"
  sha256 "5d053498e8ac9f50709dafab335cc2c3093f3665c2ef90aaeb994b14674ac203"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "bodycam"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bodycam --version")
  end
end
