cask "calendarbar" do
  version "1.0.10"
  sha256 "159bc3c488856da9d7a74ab905efda29ca88adbbaaa80836d6a0661cb864e3f5"

  url "https://github.com/treeot/CalendarBar/releases/download/v#{version}/CalendarBar-v#{version}.dmg"
  name "CalendarBar"
  desc "Menu-bar app showing current and upcoming calendar events"
  homepage "https://github.com/treeot/CalendarBar"

  # Releases are ad-hoc signed, not notarized; Gatekeeper will still prompt.
  app "CalendarBar.app"

  zap trash: [
    "~/Library/Preferences/com.bensonzhang.CalendarBar.plist",
  ]
end
