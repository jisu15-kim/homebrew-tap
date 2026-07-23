cask "swingpad" do
  version "1.0.1"
  sha256 "79849d3a8ec7897de3a83a240bc59fbb487626ba352418c0c4c716638e83207b"

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
