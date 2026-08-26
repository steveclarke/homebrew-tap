cask "gander" do
  version "0.1.26"
  sha256 "8fe5b4dd1e4b96af289abdf470b24a41054d2c161eb8586ff28ed5d91a74d361"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
