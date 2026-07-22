cask "swingpad" do
  version "1.0.0"
  sha256 "7d033a36b9e8e7ab65d7788adc859d66f5f94a02049e05f9c4e42dd809d954b8"

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
