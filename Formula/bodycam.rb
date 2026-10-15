class Bodycam < Formula
  desc "Record what AI coding agents do on your Mac"
  homepage "https://github.com/omlahore/bodycam"
  url "https://github.com/omlahore/bodycam/releases/download/v0.2.0/bodycam-darwin-universal.tar.gz"
  sha256 "8f1b23f54bb7248db1fb2ef8b57db3d9c6422035758d701f921992bf262cb713"
  license "MIT"

  depends_on macos: :ventura

  def install
    bin.install "bodycam"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bodycam --version")
  end
end
