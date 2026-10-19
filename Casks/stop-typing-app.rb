cask "stop-typing-app" do
  version "1.0.1"
  sha256 "a5dd060f290469102a8af2b17c14040e7e20470a9adbaa368232a97659e12926"

  url "https://github.com/kevintraver/stop-typing-app/releases/download/v#{version}/StopTypingApp-#{version}.dmg"
  name "Stop Typing App"
  desc "Nudges you to dictate instead of typing out paragraphs"
  homepage "https://www.stoptypingapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Stop Typing App.app"

  uninstall quit: "com.kevintraver.StopTyping"

  zap trash: [
    "~/Library/Application Scripts/com.kevintraver.StopTyping",
    "~/Library/Containers/com.kevintraver.StopTyping",
  ]
end
