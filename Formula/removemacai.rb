class Removemacai < Formula
  desc "Turn off Apple Intelligence on macOS 27 and remove its models"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v0.2.4/removemacai-darwin-arm64.tar.gz"
  version "0.2.4"
  sha256 "72c3b2a24f031ca61c11de55126d1afc2a000f51969d09a9fbed936b6026c025"
  license "MIT"
  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "removemacai"
    prefix.install "THIRD-PARTY-NOTICES.md"
  end

  test do
    system bin/"removemacai", "selftest"
  end
end
