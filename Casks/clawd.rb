cask "clawd" do
  version "0.1.0"
  sha256 "5d2d9afd063d37bc8fca0dc8507fe3c64dc537e43cb9a2e22da875a51886a6db"

  url "https://github.com/mkozhukh/clawd-usage/releases/download/v#{version}/Clawd-#{version}.zip"
  name "Clawd"
  desc "Menu bar widget showing Claude Code and Codex usage limits"
  homepage "https://github.com/mkozhukh/clawd-usage"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Clawd.app"

  uninstall quit: "ink.mono.clawd"

  zap trash: [
    "~/Library/Application Support/ClawdUsage",
    "~/Library/Preferences/ink.mono.clawd.demo.plist",
    "~/Library/Preferences/ink.mono.clawd.plist",
  ]
end
