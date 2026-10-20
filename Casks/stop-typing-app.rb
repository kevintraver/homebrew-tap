cask "stop-typing-app" do
  version "1.0.6"
  sha256 "044289977cdba8feb81efc75277fdbe1719b95d38e5f5c8dc9918a790698128b"

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
