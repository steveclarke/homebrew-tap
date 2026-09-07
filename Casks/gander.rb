cask "gander" do
  version "0.1.33"
  sha256 "2f4fc3cdfd48a3d91872e06b42e827de5bcb58ac5c1502b5dbcb5fb491a44a0a"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
