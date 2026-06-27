cask "slate" do
  version "1.4.0"
  sha256 "36ec65f0d3f1fc63a5e5a05d2b172fc5048f4708aca37aa8386f0fb0b04cee16"

  url "https://github.com/dominikstraub/slate/releases/download/v#{version}/Slate.dmg"
  name "Slate"
  desc "Keyboard-driven window manager"
  homepage "https://github.com/dominikstraub/slate"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Slate.app"

  uninstall quit: "com.slate.Slate"

  zap trash: [
    "~/Library/Application Support/com.slate.Slate",
    "~/Library/Caches/com.slate.Slate",
    "~/Library/HTTPStorages/com.slate.Slate",
    "~/Library/Preferences/com.slate.Slate.plist",
    "~/Library/Saved Application State/com.slate.Slate.savedState",
  ]
end
