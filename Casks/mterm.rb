cask "mterm" do
  version "0.9.0"
  sha256 "bedc01813a9dce337fb9cf8f7473413a972ebf31c45de1d948b8dd5ec75f70bd"

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
