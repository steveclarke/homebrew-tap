cask "gander" do
  version "0.1.27"
  sha256 "c1847eb2c7bfc8bc9f5094fc8c3a542b42f62552ea02ac05a99eb229eae514a3"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
