cask "mterm" do
  version "0.10.0"
  sha256 "190f8dc23e9ebc1b1a74c5f7d8ece74210c390780a8aa0f2fda049ff46146d66"

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
