cask "kuddo" do
  version "1.0.4"
  sha256 "892744f7d1a5117487bb2056b933a236eb897383f54e309ea91e2a878048ad03"

  url "https://github.com/d0x2a/kuddo/releases/download/v#{version}/Kuddo-#{version}.dmg"
  name "Kuddo"
  desc "Minimalistic GPU-accelerated terminal emulator"
  homepage "https://github.com/d0x2a/kuddo/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Kuddo.app"
  # `kuddo` opens Kuddo, and `kuddo <folder>` a tab there. Through open(1)
  # rather than the app's own binary, which run from a shell would start a
  # second Kuddo that quits when that shell does.
  command_wrapper "kuddo", content: <<~SH
    #!/bin/sh
    # kuddo [folder ...]: opens Kuddo, with a new tab in each folder named.
    case $1 in -h|--help) echo "usage: kuddo [folder ...]"; exit 0 ;; esac
    for arg do
      shift
      if [ ! -d "$arg" ]; then
        echo "kuddo: not a folder: $arg" >&2
        exit 1
      fi
      # A folder named like an option would be read as one by open(1).
      case $arg in -*) arg="./$arg" ;; esac
      set -- "$@" "$arg"
    done
    exec open -b com.d0x2a.kuddo "$@"
  SH

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
