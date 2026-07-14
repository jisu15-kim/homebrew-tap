cask "mding" do
  version "1.0.3"
  sha256 "ac3753bc456687c705a3169eb89816a18f6f9fc4f0aaf0d71505bb437b011aae"

  url "https://github.com/jisu15-kim/Mding/releases/download/v#{version}/Mding-#{version}.dmg"
  name "Mding"
  desc "Lightweight native Markdown viewer and editor"
  homepage "https://github.com/jisu15-kim/Mding"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Mding.app"

  zap trash: [
    "~/Library/Caches/com.jisukim.Mding",
    "~/Library/HTTPStorages/com.jisukim.Mding",
    "~/Library/Preferences/com.jisukim.Mding.plist",
    "~/Library/Saved Application State/com.jisukim.Mding.savedState",
    "~/Library/WebKit/com.jisukim.Mding",
  ]
end
