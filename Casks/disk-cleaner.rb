cask "disk-cleaner" do
  version "1.0"
  sha256 "7998ef218b11f7fa52cbb48bb9048c222dc2df3bac4d30c341a7740026d14b46"

  url "https://github.com/thai1108/disk-cleaner/releases/download/v#{version}/DiskCleaner-#{version}.dmg"
  name "Disk Cleaner"
  desc "Disk space analyzer and cleaner"
  homepage "https://github.com/thai1108/disk-cleaner"

  depends_on macos: :tahoe

  app "Disk Cleaner.app"

  zap trash: [
    "~/Library/Preferences/vn.id.thainv.diskcleaner.plist",
    "~/Library/Saved Application State/vn.id.thainv.diskcleaner.savedState",
  ]
end
