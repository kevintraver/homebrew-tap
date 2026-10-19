cask "stop-typing-app" do
  version "1.0.3"
  sha256 "7b6033e2458eda6f39c87067f2d88228398efe9399a23be8bd37976e3090b0cd"

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
