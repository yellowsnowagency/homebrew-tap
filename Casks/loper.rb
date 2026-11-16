cask "loper" do
  version "0.1.29"
  sha256 "c85b1e955bab53136216a3d0518039fbe9cd71120279a31404f6d2225549215c"

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
