cask "mterm" do
  version "1.4.0"
  sha256 "7ce28bc3299366421b414399b9ca051ecb80d90ea051d487b4167480816cbdca"

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
