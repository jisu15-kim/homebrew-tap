cask "runningcrew" do
  version "1.0.0"
  sha256 "7194c095c5838e0d7fbbab6bf6aeebd4e5b8dc48c2f7523e0ee972cc2a2aa22d"

  url "https://github.com/jisu15-kim/RunningCrew/releases/download/v#{version}/RunningCrew-#{version}.dmg"
  name "RunningCrew"
  desc "Menu bar app for managing GitHub self-hosted runners"
  homepage "https://github.com/jisu15-kim/RunningCrew"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "RunningCrew.app"

  zap trash: [
    "~/Library/Caches/com.jisukim.running-crew.RunningCrew",
    "~/Library/HTTPStorages/com.jisukim.running-crew.RunningCrew",
    "~/Library/Logs/RunningCrew",
    "~/Library/Preferences/com.jisukim.running-crew.RunningCrew.plist",
    "~/Library/Saved Application State/com.jisukim.running-crew.RunningCrew.savedState",
  ]
end
