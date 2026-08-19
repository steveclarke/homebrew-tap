cask "gander" do
  version "0.1.11"
  sha256 "210e722166bdc42b744c38469eb7472d613c48accaf645ccdcd4c364ed83aabd"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
