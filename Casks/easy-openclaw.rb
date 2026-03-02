cask "easy-openclaw" do
  version "0.1.0"
  sha256 arm:   "03ecdd406d42e881a3c4131a9142ce9900ab81db503d2ec08ffaa97ba910fedf",
         intel: "755748932aa45c0914038bcd35b1b92e278c87038d13d8ed276d33748bcb3a65"

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
