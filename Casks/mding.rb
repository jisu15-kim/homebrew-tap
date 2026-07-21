cask "mding" do
  version "1.1.0"
  sha256 "3f1a920d5dabc86b100af9e8522950596c65858f941c4930400d2af18ea640f3"

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
