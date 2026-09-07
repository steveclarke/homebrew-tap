cask "gander" do
  version "0.1.32"
  sha256 "0b6c59654b9af317755f4d96d5f24fffb5378d6ca864b28c4a1805e454f7e5a7"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
