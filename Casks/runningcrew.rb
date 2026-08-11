cask "runningcrew" do
  version "1.1.1"
  sha256 "2f47a8bf9f855013b17ee1b1ed98ba18228b112e01229728f40453d2694f9198"

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
