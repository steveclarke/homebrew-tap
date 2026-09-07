cask "gander" do
  version "0.1.30"
  sha256 "cfd9b654fc0d9439766d4a94e94880f74e64f1e89075d462c8a3db0a137c76d7"

  url "https://github.com/steveclarke/gander/releases/download/v#{version}/Gander-#{version}-arm64.dmg"
  name "Gander"
  desc "Review code diffs, branches, and pull requests"
  homepage "https://github.com/steveclarke/gander"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :catalina

  app "Gander.app"
end
