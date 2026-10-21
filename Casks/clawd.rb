cask "clawd" do
  version "0.1.1"
  sha256 "26118cea80bad7488ef7fd14e5d9f77f65c4c6fb7ca249c51cb78923eab15bad"

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
