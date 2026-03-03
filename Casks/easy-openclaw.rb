cask "easy-openclaw" do
  version "0.1.0"
  sha256 "f512465154afef16eb278d05a6ea94b0d57723054543b96d6911f7efff14f636"

  url "https://gh-proxy.com/https://github.com/alittleshine/homebrew-easy-openclaw/releases/download/v#{version}/easy-openclaw_#{version}_aarch64.dmg"

  name "Easy OpenClaw"
  desc "OpenClaw 全流程管理工具，面向中国大陆用户"
  homepage "https://github.com/alittleshine/homebrew-easy-openclaw"

  depends_on arch: :arm64

  app "easy-openclaw.app"

  zap trash: [
    "~/Library/Application Support/com.easyopenclaw.app",
    "~/Library/Caches/com.easyopenclaw.app",
    "~/Library/Preferences/com.easyopenclaw.app.plist",
    "~/.openclaw",
  ]
end
