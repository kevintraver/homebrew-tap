cask "stop-typing-app" do
  version "1.0.0"
  sha256 "d839b53a41a150afe87aee61495253ba13ebe2808f52f6d54774300ab17f735b"

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
