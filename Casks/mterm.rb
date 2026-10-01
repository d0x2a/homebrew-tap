cask "mterm" do
  version "1.0.0"
  sha256 "3f4754992c3d106cddf2c9ea9e796ac219c0f23efbe152e46e3fee70c2e6879c"

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
    "~/Library/Caches/com.d0x2a.mTerm",
    "~/Library/Preferences/com.d0x2a.mTerm.plist",
    "~/Library/Saved Application State/com.d0x2a.mTerm.savedState",
  ]
end
