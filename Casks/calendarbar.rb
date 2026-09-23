cask "calendarbar" do
  version "1.0.12"
  sha256 "a889ddbf6a89fefdb81c16b3c2a5a8f54cddd1575f3afd6fa6ba7950d2189919"

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
