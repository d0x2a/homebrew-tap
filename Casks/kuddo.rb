cask "kuddo" do
  version "1.0.2"
  sha256 "6f685ae162838def8806fc9ee41a4ccf2c2c30a0b218b4b4cff23d168ef30dc3"

  url "https://github.com/d0x2a/kuddo/releases/download/v#{version}/Kuddo-#{version}.dmg"
  name "Kuddo"
  desc "Minimalistic GPU-accelerated terminal emulator"
  homepage "https://github.com/d0x2a/kuddo/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "mterm"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Kuddo.app"

  zap trash: [
    "~/Library/Application Support/Kuddo",
    "~/Library/Application Support/mTerm",
    "~/Library/Caches/com.d0x2a.kuddo",
    "~/Library/Caches/com.d0x2a.mTerm",
    "~/Library/Preferences/com.d0x2a.kuddo.plist",
    "~/Library/Preferences/com.d0x2a.mTerm.plist",
    "~/Library/Saved Application State/com.d0x2a.kuddo.savedState",
    "~/Library/Saved Application State/com.d0x2a.mTerm.savedState",
  ]
end
