class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v1.1.3/removemacai-darwin-arm64.tar.gz"
  version "1.1.3"
  sha256 "8042fbf93e5980d7290f589f7d922495ecc8fbf3410ae7d8c5d6c44c0a2c2dd4"
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
