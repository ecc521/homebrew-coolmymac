cask "coolmymac" do
  version "1.0.4"
  sha256 "b0961beb7a8645bd7f6813e4cbc8104015646a25de3d7aa07d56db772e73d604"

  url "https://github.com/ecc521/CoolMyMac/releases/download/v#{version}/CoolMyMac.dmg"
  name "CoolMyMac"
  desc "Menu bar app and CLI to monitor temperatures and control Mac fans"
  homepage "https://github.com/ecc521/CoolMyMac"

  # Requires macOS 15.0 or later as defined in your project
  depends_on macos: ">= :sequoia"

  # This tells Homebrew to drag CoolMyMac.app into the /Applications folder
  app "CoolMyMac.app"

  # This automatically symlinks the CLI into /usr/local/bin/coolmymac!
  binary "CoolMyMac.app/Contents/MacOS/coolmymac"

  # Cleans up preferences if the user runs `brew uninstall --zap coolmymac`
  zap trash: [
    "~/Library/Preferences/com.coolmymac.app.plist",
    "~/Library/Preferences/com.coolmymac.daemon.plist"
  ]
end
