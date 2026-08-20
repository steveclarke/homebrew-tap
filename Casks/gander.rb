cask "gander" do
  version "0.1.19"
  sha256 "ef4c9f801848f85904d3a19fde3b4aa2d38b16c8a7115aa6fbf054504d9f47d3"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
