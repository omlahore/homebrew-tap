cask "bodycam-app" do
  version "0.2.0"
  sha256 "b3eb84cc0ef9a466965249689c07c803fc87711669e14a55ad11ef27d52944cb"

  url "https://github.com/omlahore/bodycam/releases/download/v#{version}/bodycam-app.zip"
  name "bodycam"
  desc "Menu bar app that records what AI coding agents do on your Mac"
  homepage "https://omlahore.github.io/bodycam/"

  depends_on macos: ">= :sonoma"

  app "bodycam.app"

  zap trash: [
    "~/Library/Logs/bodycam",
    "~/Library/Preferences/io.github.omlahore.bodycam.plist",
  ]
end
