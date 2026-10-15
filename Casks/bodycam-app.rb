cask "bodycam-app" do
  version "0.2.0"
  sha256 "4811b16c67dbe1473ed3f16c26131914659ce209aa9ec24cf3b53e6c465b19dc"

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
