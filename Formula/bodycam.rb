class Bodycam < Formula
  desc "Record what AI coding agents do on your Mac"
  homepage "https://github.com/omlahore/bodycam"
  url "https://github.com/omlahore/bodycam/releases/download/v0.1.1/bodycam-darwin-universal.tar.gz"
  sha256 "4a39643c01d8ac11d730abb0bbf130a0352889d250249e35d959fca744ec74fb"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "bodycam"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bodycam --version")
  end
end
