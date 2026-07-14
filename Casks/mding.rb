cask "mding" do
  version "1.0.1"
  sha256 "f1fbd43b3c7d80e1c64a2004affe8691f25681a20be1224a2dd85a776dd1957b"

  url "https://github.com/jisu15-kim/Mding/releases/download/v#{version}/Mding-#{version}.dmg"
  name "Mding"
  desc "Lightweight native Markdown viewer and editor"
  homepage "https://github.com/jisu15-kim/Mding"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Mding.app"

  zap trash: [
    "~/Library/Caches/com.jisukim.Mding",
    "~/Library/HTTPStorages/com.jisukim.Mding",
    "~/Library/Preferences/com.jisukim.Mding.plist",
    "~/Library/Saved Application State/com.jisukim.Mding.savedState",
    "~/Library/WebKit/com.jisukim.Mding",
  ]
end
