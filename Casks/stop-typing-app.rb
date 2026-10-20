cask "stop-typing-app" do
  version "1.0.5"
  sha256 "54581db2f3187e961e3fde27dcdc68859bf7690b43881fff33abd3491866e5db"

  url "https://github.com/kevintraver/stop-typing-app/releases/download/v#{version}/StopTypingApp-#{version}.dmg"
  name "Stop Typing App"
  desc "Nudges you to dictate instead of typing out paragraphs"
  homepage "https://www.stoptypingapp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Stop Typing App.app"

  uninstall quit: "com.kevintraver.StopTyping"

  zap trash: [
    "~/Library/Application Scripts/com.kevintraver.StopTyping",
    "~/Library/Containers/com.kevintraver.StopTyping",
  ]
end
