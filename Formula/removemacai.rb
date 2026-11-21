class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v1.2.2/removemacai-darwin-arm64.tar.gz"
  version "1.2.2"
  sha256 "1c36006a15c261527aea256e0f636124bcb46a99a47b295cb2872cb75a571135"
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
