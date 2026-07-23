cask "swingpad" do
  version "1.1.0"
  sha256 "29debb7a6e1db299784efe304ccd2fdf460dacbc7195b2f8f3ab5e1190c67836"

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
