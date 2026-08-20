cask "gander" do
  version "0.1.21"
  sha256 "120c6683418ebb64b59dc04e068e77ea3a2656f7e0fd703c9571913e0b60d061"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
