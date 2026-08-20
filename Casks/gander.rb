cask "gander" do
  version "0.1.20"
  sha256 "cc8da58a249d9c846c6105d41429286a438609407ce92e529dc79ca7d0519abf"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
