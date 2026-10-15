cask "athanor" do
  version "0.1.1"
  sha256 "f0af77b970b30f6d156a30f9830739abd70b37b49ff04fbb7068636d70058c83"

  url "https://github.com/d0x2a/athanor/releases/download/v#{version}/Athanor-#{version}.dmg"
  name "Athanor"
  desc "Menu bar app that runs and watches shell scripts"
  homepage "https://github.com/d0x2a/athanor/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  # No `uninstall quit:`: scripts outlive the app by design, and an upgrade
  # shouldn't stop them. The next launch picks them up again.
  app "Athanor.app"

  zap trash: [
    "~/.config/athanor",
    "~/Library/Application Support/Athanor",
    "~/Library/Caches/com.d0x2a.athanor",
    "~/Library/HTTPStorages/com.d0x2a.athanor",
    "~/Library/Logs/Athanor",
    "~/Library/Preferences/com.d0x2a.athanor.plist",
  ]
end
