cask "mterm" do
  version "1.6.0"
  sha256 "09baee257318245838b795e1f02beac26415aad4db67c0462d20dff0d4005d2a"

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
