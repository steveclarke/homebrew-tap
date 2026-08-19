cask "gander" do
  version "0.1.12"
  sha256 "f81b9161e4b51d9dd7c08f20c9831fb2fb103f383a2b5721446a37b36696fd38"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
