class Removemacai < Formula
  desc "Debloat macOS: turn off Apple Intelligence, analytics, ads and pop-ups"
  homepage "https://github.com/omlahore/RemoveMacAI"
  url "https://github.com/omlahore/RemoveMacAI/releases/download/v1.2.1/removemacai-darwin-arm64.tar.gz"
  version "1.2.1"
  sha256 "dae3e5cbfce19718e47e60d7e26a41546614492ee3f69b17538203350735daf7"
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
