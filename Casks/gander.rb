cask "gander" do
  version "0.1.28"
  sha256 "3ed9f49b08fb5abfbbcea94d2573445de9d6072532f4d8cfc8e17911f15779d6"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
