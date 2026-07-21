cask "mding" do
  version "1.1.1"
  sha256 "2db4df4f9b05347c26f817d521a407e5f2770b9d2bb6d24322b68e0ab1652b27"

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
