cask "calendarbar" do
  version "1.0.11"
  sha256 "eb87354a3bf88ee84d5631e5faa8d5deb801e6564bb618051b8382aca9997414"

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
