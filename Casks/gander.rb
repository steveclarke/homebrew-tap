cask "gander" do
  version "0.1.18"
  sha256 "2838eb9b2e5d0b1f5a71babf0135c3960c13e90d1541c09f73591edfca4f05de"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
