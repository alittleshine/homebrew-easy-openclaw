cask "easy-openclaw" do
  version "0.1.0"
  sha256 arm:   "9dd3950344d4d46c6b12ac48d95eabb94643279a86a240015524e50f3a3df9c3",
         intel: "07752d39de0ac6fef3a9b99df44606e0a6eae5f6ef70dfd5c928fd297f1003fb"

  on_arm do
    url "https://github.com/alittleshine/homebrew-easy-openclaw/releases/download/v#{version}/easy-openclaw_#{version}_aarch64.dmg",
        verified: "github.com/alittleshine/homebrew-easy-openclaw/"
  end
  on_intel do
    url "https://github.com/alittleshine/homebrew-easy-openclaw/releases/download/v#{version}/easy-openclaw_#{version}_x64.dmg",
        verified: "github.com/alittleshine/homebrew-easy-openclaw/"
  end

  name "Easy OpenClaw"
  desc "OpenClaw 全流程管理工具，面向中国大陆用户"
  homepage "https://github.com/alittleshine/homebrew-easy-openclaw"

  app "easy-openclaw.app"

  zap trash: [
    "~/Library/Application Support/com.easyopenclaw.app",
    "~/Library/Caches/com.easyopenclaw.app",
    "~/Library/Preferences/com.easyopenclaw.app.plist",
    "~/.openclaw",
  ]
end
