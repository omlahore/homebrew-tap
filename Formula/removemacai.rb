class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v1.1.2/removemacai-darwin-arm64.tar.gz"
  version "1.1.2"
  sha256 "ebdf41c95c0098c15d2de027852197f121cd42bad097bd134c4bd0a4bae4eccb"
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
