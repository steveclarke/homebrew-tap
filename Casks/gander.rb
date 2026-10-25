cask "gander" do
  version "0.1.36"
  sha256 "5fdd78b673d84696a4424d5d1db477c611944e82c209a2c5fac27eda7399d06a"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64

  app "Gander.app"
end
