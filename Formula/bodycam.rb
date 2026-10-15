class Bodycam < Formula
  desc "Record what AI coding agents do on your Mac"
  homepage "https://github.com/omlahore/bodycam"
  url "https://github.com/omlahore/bodycam/releases/download/v0.2.0/bodycam-darwin-universal.tar.gz"
  sha256 "97afa0db1aed13e7b292e8a29511ca09ce100138848a1737a25d3d2c62c6745a"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "bodycam"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bodycam --version")
  end
end
