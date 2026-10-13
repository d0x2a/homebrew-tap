cask "athanor" do
  version "0.1.0"
  sha256 "c6362eef8a0d3d6d73f308245058307edc88a674faae1eca7b290ae94d72775b"

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
