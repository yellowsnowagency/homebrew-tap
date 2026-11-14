cask "loper" do
  version "0.1.28"
  sha256 "dc18272eaa5b97e53d426b8426815f8e8fcad43be3cdbd006755727714a93fcd"

  url "https://github.com/yellowsnowagency/loper-releases/releases/download/v#{version}/Loper_macOS_arm64.dmg",
      verified: "github.com/yellowsnowagency/loper-releases/"
  name "Loper"
  desc "Small, fast editor and viewer for code, config, logs, subtitles and PDFs"
  homepage "https://loperedit.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Loper.app"

  zap trash: [
    "~/Library/Application Support/dev.loper.editor",
    "~/Library/Application Support/Loper",
    "~/Library/Caches/dev.loper.editor",
    "~/Library/Preferences/dev.loper.editor.plist",
    "~/Library/Saved Application State/dev.loper.editor.savedState",
    "~/Library/WebKit/dev.loper.editor",
  ]
end
