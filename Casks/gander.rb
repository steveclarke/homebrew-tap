cask "gander" do
  version "0.1.34"
  sha256 "03639cd574356a84a89b9747876b877cd462d33deecddf009af809f40a09ef04"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64

  app "Gander.app"
end
