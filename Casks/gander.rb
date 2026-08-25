cask "gander" do
  version "0.1.23"
  sha256 "61f9ef6008738417a00ef29b286f0010578194a2ae62a9cdcb32093e16249ce7"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
