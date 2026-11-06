cask "disk-cleaner" do
  version "1.1"
  sha256 "1f4706012ed07c2a3cd9ee78274aacde6d048086455c9928c8aff21b5cd491a1"

  url "https://github.com/thai1108/disk-cleaner/releases/download/v#{version}/DiskCleaner-#{version}.dmg"
  name "Disk Cleaner"
  desc "Disk space analyzer and cleaner"
  homepage "https://github.com/thai1108/disk-cleaner"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Disk Cleaner.app"

  zap trash: [
    "~/Library/Preferences/vn.id.thainv.diskcleaner.plist",
    "~/Library/Saved Application State/vn.id.thainv.diskcleaner.savedState",
  ]
end
