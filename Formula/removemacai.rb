class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v1.0.3/removemacai-darwin-arm64.tar.gz"
  version "1.0.3"
  sha256 "4259fd27c46e63f620d8472dd961c6d47842f2e45c304c76b54bcd56f255e9ff"
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
