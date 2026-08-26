cask "gander" do
  version "0.1.25"
  sha256 "b602de6e65ca5464b80167f871f807a8e4938b02b65055925a00de1beb91cc82"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
