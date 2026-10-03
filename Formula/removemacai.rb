class Removemacai < Formula
  desc "Turn off Apple Intelligence on macOS 27 and remove its models"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v0.2.3/removemacai-darwin-arm64.tar.gz"
  version "0.2.3"
  sha256 "d9987c429a12190b4c9f19b93a220f8746c127bbf262294cfa505ada6f8e3718"
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
