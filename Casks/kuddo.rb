cask "kuddo" do
  version "1.0.3"
  sha256 "6680b8c380641e418652860bd908dd347f9703ef68b3c6d947fb120cc7a4e54c"

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
