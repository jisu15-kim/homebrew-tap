cask "swingpad" do
  version "1.2.1"
  sha256 "abe0f91c212a3498bdd2820cd403dce82844b21e6c3e198d73a5c134f6599db5"

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
