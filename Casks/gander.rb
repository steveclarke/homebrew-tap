cask "gander" do
  version "0.1.31"
  sha256 "0f9c0511778f55196931a01c6c94e2a0483746a9740d0e70ab943e6531f51df5"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
