cask "gander" do
  version "0.1.13"
  sha256 "8df17bb35ae21f41e380eab06767ccb2bdaae1db0fa95acff9ef76f1bc4af0dc"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
