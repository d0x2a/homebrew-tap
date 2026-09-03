cask "mterm" do
  version "1.0.0"
  sha256 "373f65b90370403f3c3709954ccdb43853bf5ebbc50bdfe1cb8c1e140e680276"

  url "https://github.com/d0x2a/mTerm/releases/download/v#{version}/mTerm-#{version}.dmg"
  name "mTerm"
  desc "Minimalistic GPU-accelerated terminal emulator"
  homepage "https://github.com/d0x2a/mTerm/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "mTerm.app"

  zap trash: [
    "~/Library/Application Support/mTerm",
    "~/Library/Caches/com.d0x2a.mTerm",
    "~/Library/Preferences/com.d0x2a.mTerm.plist",
    "~/Library/Saved Application State/com.d0x2a.mTerm.savedState",
  ]
end
