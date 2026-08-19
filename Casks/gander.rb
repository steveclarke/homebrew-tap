cask "gander" do
  version "0.1.15"
  sha256 "dc4e64f79e07ba3d40f12fa522a5bead00372dadc9f5aa0452707310fb4745dc"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
