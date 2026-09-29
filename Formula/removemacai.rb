class Removemacai < Formula
  desc "Turn off Apple Intelligence on macOS 27 and reclaim its disk space"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "fb51ba443fa1c9a1d6da4e7a0d9c42a1ca17a6450a8b8de41ed040ac06e9c463"
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
