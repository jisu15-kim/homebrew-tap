cask "swingpad" do
  version "1.1.1"
  sha256 "7bd94aec54fd44b6e130b2ac771126b20c1c85155f04806a6215b6383558bf33"

  url "https://github.com/jisu15-kim/SwingPad/releases/download/v#{version}/SwingPad-#{version}.dmg"
  name "SwingPad"
  desc "SwingPad"
  homepage "https://github.com/jisu15-kim/SwingPad"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "SwingPad.app"

  zap trash: [
    "~/Library/Caches/com.jisukim.swingpad",
    "~/Library/HTTPStorages/com.jisukim.swingpad",
    "~/Library/Preferences/com.jisukim.swingpad.plist",
    "~/Library/Saved Application State/com.jisukim.swingpad.savedState",
  ]
end
