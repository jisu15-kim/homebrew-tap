cask "runningcrew" do
  version "1.1.0"
  sha256 "59e1d8737be5bbbfac16f45a06e96f8f33f28d24194b414b88eedb3d27d5ea7b"

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
