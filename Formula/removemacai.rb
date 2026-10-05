class Removemacai < Formula
  desc "Turn off Apple Intelligence on macOS 27 and remove its models"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v0.2.5/removemacai-darwin-arm64.tar.gz"
  version "0.2.5"
  sha256 "293a438b18ab160d58ca1d77ac282d5de67537b1739cfa5cd7dd0f23f80d62b1"
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
