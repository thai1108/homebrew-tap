cask "disk-cleaner" do
  version "1.2.0"
  sha256 "a22ba5d34354d25efa342a06e58f14761c75a24783039d7ee3457fbb78a62acb"

  url "https://github.com/thai1108/disk-cleaner/releases/download/v#{version}/DiskCleaner-#{version}.dmg"
  name "Disk Cleaner"
  desc "Disk space analyzer and cleaner"
  homepage "https://github.com/thai1108/disk-cleaner"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Disk Cleaner.app"

  zap trash: [
    "~/Library/Preferences/vn.id.thainv.diskcleaner.plist",
    "~/Library/Saved Application State/vn.id.thainv.diskcleaner.savedState",
  ]
end
