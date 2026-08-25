cask "gander" do
  version "0.1.24"
  sha256 "868ffc52f8b91a1f35d12078bea86ce99df685daa66cdab493a785c6189c99cb"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
