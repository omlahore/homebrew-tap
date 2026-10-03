class Removemacai < Formula
  desc "Turn off Apple Intelligence on macOS 27 and remove its models"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v0.2.2/removemacai-darwin-arm64.tar.gz"
  version "0.2.2"
  sha256 "c87aea3a57af65bd9fdc2e1b56587d54d7b578d556671dd85811cfc1a45d198f"
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
