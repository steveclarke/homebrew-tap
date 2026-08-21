cask "gander" do
  version "0.1.22"
  sha256 "467533142414f6ce4d0dfab62599b14b90b7e9a7e7003146a2577aef02046582"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
