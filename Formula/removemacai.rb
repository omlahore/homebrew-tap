class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v1.2.0/removemacai-darwin-arm64.tar.gz"
  version "1.2.0"
  sha256 "8b15e8cebe008846606c9af5e605da44671ccfa3f5fe6ac2d700e7c6b595245f"
  license "MIT"
  depends_on arch: :arm64
  depends_on macos: :sequoia

  def install
    bin.install "removemacai"
    prefix.install "THIRD-PARTY-NOTICES.md"
  end

  test do
    system bin/"removemacai", "selftest"
  end
end
