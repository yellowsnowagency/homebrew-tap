cask "loper" do
  version "0.1.31"
  sha256 "fc19ba319ffe9f3415de2913310b06a98411f72441b9aa0ab309ec3389fc3e48"

  url "https://github.com/yellowsnowagency/loper-releases/releases/download/v#{version}/Loper_macOS_arm64.dmg"
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
