class Removemacai < Formula
  desc "Turn off Apple Intelligence on macOS 27 and reclaim its disk space"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "8074b30b660dc055a8e9b1bc6b1dbe333bd94c4f6f91b8464ba24250e5c1ca59"
  license "MIT"
  depends_on arch: :arm64
  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/removemacai"
  end

  test do
    system bin/"removemacai", "selftest"
  end
end
