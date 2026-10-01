cask "mterm" do
  version "1.0.1"
  sha256 "a7a013e4deb7f51246e1897f2900d63205222b8b21f14c6c88acb9a64d786c0f"

  url "https://github.com/d0x2a/kuddo/releases/download/v#{version}/Kuddo-#{version}.dmg"
  name "Kuddo"
  desc "Minimalistic GPU-accelerated terminal emulator"
  homepage "https://github.com/d0x2a/kuddo/"

  livecheck do
    cask "kuddo"
  end

  deprecate! date: "2026-10-01", because: "is now called Kuddo", replacement_cask: "kuddo"

  conflicts_with cask: "kuddo"
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
